// var prefixWithEntity = function(name) {
//   return function(data, headers) {
//     var params = {};
//     params[name] = data;
//     return angular.toJson(params);
//   };
// };

// albooms.factory('Album', ['$resource', function($resource) {
//   return $resource('<%= url.albums_path %>/:collection:id/:member',
//         { id: '@id', collection: '@collection', member: '@member' },
//         {'get': { method: 'GET' },
//          'save': { method: 'PUT', transformRequest: prefixWithEntity('album') },
//          'create': { method: 'POST',transformRequest: prefixWithEntity('album') },
//          'query': { method: 'GET', isArray: true },
//          'preview': { method: 'GET', params: { collection: 'preview' } },
//          'delete': { method: 'DELETE' }
//         });
// }]);