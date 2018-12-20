var mainApp = angular.module("colorapp", [ 'ui.router']);

mainApp.config(function($stateProvider, $urlRouterProvider) {
	//$urlRouterProvider.otherwise('/no-color');	   
	console.log("At this Step");
	$stateProvider
	/*.state('none', {
		url: '/',	
		templateUrl: 'partials/red.html',
		controller: 'myCtrl'			
	})*/
	.state('red', {
		url: '/red',
		views: {
			'dark': { 
				templateUrl: 'partials/red.html',
				controller: 'red'
			},
			'light': { 
				templateUrl: 'partials/red.html',
				controller: 'red'
			}
		}
	})
	.state('yellow', {
		url: '/yellow',
		views: {
			'dark': { 
				templateUrl: 'partials/yellow.html',
				controller: 'yellow'
			},
			'light': { 
				templateUrl: 'partials/yellow.html',
				controller: 'yellow'
			}
		}
	})
	.state('orange', {
		url: '/orange',
		views: {
			'dark': { 
				templateUrl: 'partials/orange.html',
				controller: 'orange'
			},
			'light': { 
				templateUrl: 'partials/orange.html',
				controller: 'orange'
			}
		}
	})
	.state('green', {
		url: '/green',
		views: {
			'dark': { 
				templateUrl: 'partials/green.html',
				controller: 'green'
			},
			'light': { 
				templateUrl: 'partials/green.html',
				controller: 'green'
			}
		}
	})
	.state('purple', {
		url: '/purple',
		views: {
			'dark': { 
				templateUrl: 'partials/purple.html',
				controller: 'purple'
			},
			'light': { 
				templateUrl: 'partials/purple.html',
				controller: 'purple'
			}
		}
	})
	.state('blue', {
		url: '/blue',
		views: {
			'dark': { 
				templateUrl: 'partials/blue.html',
				controller: 'blue'
			},
			'light': { 
				templateUrl: 'partials/blue.html',
				controller: 'blue'
			}
		}
	});
	 /*otherwise({
	        redirectTo: '/'
	 });*/
});
mainApp.controller('red', function($scope) {
	$scope.message = "WELCOME TO FIRE CIVILIZATION";
});
mainApp.controller('yellow', function($scope) {
	$scope.message = "WELCOME TO ELECTRIC CIVILIZATION";
});
mainApp.controller('orange', function($scope) {
	$scope.message = "WELCOME TO EARTH CIVILIZATION";
});
mainApp.controller('green', function($scope) {
	$scope.message = "WELCOME TO NATURE CIVILIZATION";
});
mainApp.controller('purple', function($scope) {
	$scope.message = "WELCOME TO WIND CIVILIZATION";
});
mainApp.controller('blue', function($scope) {
	$scope.message = "WELCOME TO WATER CIVILIZATION";
});