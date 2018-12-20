(function(angular, undefined){
	"use strict";

	var app = angular.module('MyApp',['ngMaterial']);
	app.controller('MyController', function($scope, $mdBottomSheet) {

		var imagePath = 'img/list/60.jpeg';
		$scope.messages = [{
			face : imagePath,
			what: 'Brunch this weekend?',
			who: 'Min Li Chan',
			when: '3:08PM',
			notes: " I'll be in your neighborhood doing errands"
		}, {
			face : imagePath,
			what: 'Brunch this weekend?',
			who: 'Min Li Chan',
			when: '3:08PM',
			notes: " I'll be in your neighborhood doing errands"
		}, {
			face : imagePath,
			what: 'Brunch this weekend?',
			who: 'Min Li Chan',
			when: '3:08PM',
			notes: " I'll be in your neighborhood doing errands"
		}, {
			face : imagePath,
			what: 'Brunch this weekend?',
			who: 'Min Li Chan',
			when: '3:08PM',
			notes: " I'll be in your neighborhood doing errands"
		}, {
			face : imagePath,
			what: 'Brunch this weekend?',
			who: 'Min Li Chan',
			when: '3:08PM',
			notes: " I'll be in your neighborhood doing errands"
		}];


		$scope.openBottomSheet = function() {
			$mdBottomSheet.show({
				template: '<md-bottom-sheet>Hello!</md-bottom-sheet>'
			});
		};
	});
})(angular);