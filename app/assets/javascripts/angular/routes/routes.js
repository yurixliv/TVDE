// albooms.config(['$routeProvider', '$locationProvider', function($routeProvider, $locationProvider){
// 	$routeProvider
// 		.when('/', {redirectTo: '/albums'})
// 		.when('/albums', {templateUrl: '/albums.ng', controller: 'AlbumController'})
// 		.when('/albums/new', {templateUrl: '/albums/new.ng', controller: 'AlbumFormController'})
// 		.when('/albums/:id', {templateUrl: '/albums/show.ng', controller: 'AlbumDetailsController'})
// 		.when('/albums/:id/edit', {templateUrl: '/albums/edit.ng', controller: 'AlbumFormController'});
// 	return $locationProvider.html5Mode(true);
// }]);