Vim�UnDo� ��}�+�1V[������tN��������   �                                   [��[    _�                             ����                                                                                                                                                                                                                                                                                                                                                             [��W     �       �   �    �         �    5�_�                     �        ����                                                                                                                                                                                                                                                                                                                                                             [��Z    �   �   �       �   !import parseURL from 'url-parse';   'import queryString from 'query-string';   ?import { get, groupBy, transform, omit, values } from 'lodash';   'import { findFilter } from './filters';       6export const parseLocation = (location, bwApiSdk) => {   '    if (typeof location === 'string') {   -        location = parseURL(location, false);       }       )    const { pathname, query } = location;   B    const pathnameParts = pathname.replace(/\/+$/, '').split('/');   c    const type = pathnameParts.find((entry) => ['shopping', 'sets', 'categories'].includes(entry));           if (!type) {   @        throw new Error('No valid type was found in given URL');       }       R    // Prefer segment from ?segment and fallback to inferring it from the pathname   \    const rawSegment = `/${pathnameParts.slice(pathnameParts.indexOf(type) + 1).join('/')}`;   A    const segment = get(location, 'query.segment') || rawSegment;       U    const parsedQuery = typeof query === 'string' ? queryString.parse(query) : query;       #    // Fix lower case of properties   :    parsedQuery.sortDirection = parsedQuery.sortdirection;       -    const legacyQuery = type === 'shopping' ?   I        bwApiSdk.adapters.products.listing.toStandardQuery(parsedQuery) :   J        bwApiSdk.adapters.editorial.sets.get.toStandardQuery(parsedQuery);           const params = legacyQuery;   O    const q = location.search !== undefined ? location.search : location.query;   j    const url = `${location.pathname}${location.search !== undefined ? location.search : location.query}`;           return {           type,           segment,           rawSegment,           params,           url,           query: q,       };   };       Rexport const buildLocationFromListing = (listing = null, bwApiSdk, subfolder) => {       if (!listing) {           return null;       }       '    const { meta: { type } } = listing;   L    const { pathname, params } = buildPathnameAndParams(listing, subfolder);           let legacyParams;           if (type === 'shopping') {   P        legacyParams = bwApiSdk.adapters.products.listing.toLegacyQuery(params);       } else {   R        legacyParams = bwApiSdk.adapters.editorial.sets.get.toLegacyQuery(params);       }       $    // Build the legacy query params       const urlQuery = {   B        // Discard 'pageSize' because they shouldn't be in the URL   S        // Discard 'sort' and 'sortDirection' when default sort, for SEO pagination   �        ...omit(legacyParams, 'pageSize', legacyParams && legacyParams.sort === 'ranking' ? ['sort', 'sortDirection'] : undefined),       };           return {   R        pathname: type === 'shopping' ? `${pathname}${params.segment}` : pathname,            segment: params.segment,   I        search: `?${queryString.stringify(urlQuery)}`.replace(/\?$/, ''),       };   };       'export const buildPathnameAndParams = (       {   6        meta: { type, pathname, segment, query } = {},   +        filters: { facets, selected } = {},           sort,           pagination,       } = {},       subfolder   ) => {   Q    const groupedFilters = groupBy(values(selected), (filter) => filter.type.id);   C    let basePathname = type === 'shopping' ? `/${type}` : pathname;       (    if (subfolder && subfolder !== '') {   6        basePathname = `/${subfolder}${basePathname}`;       }           // Filters   b    const transformed = transform(groupedFilters, (transformed, selectedFacets, filterTypeId) => {   �        if ((filterTypeId === 'gender' || filterTypeId === 'categories' || filterTypeId === 'brands' || filterTypeId === 'pricetype')) {   d            if (selectedFacets.length === 1 && segment.indexOf(`/${selectedFacets[0].slug}`) >= 0) {   E                transformed.pathname += `/${selectedFacets[0].slug}`;               } else {   W                const segmentFilterIds = segment.split('/').reduce((filters, slug) => {   J                    const filter = findFilter(facets, filterTypeId, slug);       6                    filter && filters.push(filter.id);       #                    return filters;                   }, []);       I                transformed.params.filters[filterTypeId] = selectedFacets   S                    .filter((filter) => segmentFilterIds.indexOf(filter.id) === -1)   0                    .map((filter) => filter.id);               }   .        } else if (filterTypeId === 'price') {   w            transformed.params.filters[filterTypeId] = selectedFacets.reduce((result, { range: { upper, lower } }) => {                   if (!upper) {   5                    result = [...result, `${lower}`];       "                    return result;                   }       :                result = [...result, `${lower}-${upper}`];                       return result;               }, []);           } else {   a            transformed.params.filters[filterTypeId] = selectedFacets.map((filter) => filter.id);   	        }       }, {           pathname: basePathname,            params: { filters: {} },       });               // Sort   #    transformed.params.sort = sort;           // Pagination   /    transformed.params.pagination = pagination;           // Query   )    transformed.params.filters.q = query;       &    // Segment (/shoes, /dresses, etc)   )    transformed.params.segment = segment;           return transformed;   };5��