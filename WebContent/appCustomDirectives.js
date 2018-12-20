var mainApp = angular.module("mainApp", []);

//START OF STUDENT DIRECTIVE AND CONTROLLER
mainApp
.directive(
		'student',
		function() {
			var directive = {};
			directive.restrict = 'E';
			directive.template = "Student: <b>{{student.name}}</b> , Roll No: <b>{{student.rollno}}</b>";
			directive.scope = {
					student : "=attr"
			}
			directive.compile = function(element, attributes) {
				element.css("border", "3px solid magenta","padding","10px 10px 10px 10px");
				var linkFunction = function($scope, element,
						attributes) {
					element.html("Student: <b>"
							+ $scope.student.name
							+ "</b> , Roll No: <b>"
							+ $scope.student.rollno
							+ "</b><br/>");
					element.css("background-color", "olive");
				}
				return linkFunction;
			}
			return directive;
		});
mainApp.controller('StudentController', function($scope) {
	$scope.abc = {};
	$scope.abc.name = "KING IN THE NORTH";
	$scope.abc.rollno = 10000;
	$scope.def = {};
	$scope.def.name = "SHREK THE BEAST";
	$scope.def.rollno = 20000;
});
//END OF STUDENT DIRECTIVE AND CONTROLLER

//START OF SHREK DIRECTIVE AND CONTROLLER
mainApp
.directive(
		'shrek',
		function() {
			var directive = {};
			directive.restrict = 'E';
			directive.templateUrl = "shrek.html";
			directive.scope = {
				user :  "=username"	
			};
			return directive;
		});

mainApp.controller('ShrekController', function($scope) {
	console.log("INSIDE SHREK CONTROLLER");
	$scope.King_Bradley= {
			name : "KING BRADLEY",
			address : {
				house : "HALL NO 5, CENTRAL CASTLE",
				street : "AVENUE ZERO",
				city : "CENTRAL CITY",
				state : "CENTRL STATE",
				country : "AMESTRIAS",
				pinCode : "084210"
			},
			friends : ["SAURON","DARTH VADER","DARTH SIDIOUS","AKU"]
	};	
	$scope.Darth_Sidious= {
			name : "EMPEROR PALAPTINE",
			address : {
				house : "HALL NO 5, CENTRAL EYE",
				street : "2ND MODULE",
				city : "DEATH STAR MODULE 64",
				state : "DEATH STAR",
				country : "DEATH STAR",
				pinCode : "819310"
			},
			friends : ["SAURON","DARTH VADER","KING BRADLEY","AKU"]
	};	
});
//END OF SHREK DIRECTIVE AND CONTROLLER

/*angular.module('validationExample', [])
.directive('ensureUnique', function($http) {
	return {
		require: 'ngModel',
		link: function(scope, ele, attrs, c) {
			scope.$watch(attrs.ngModel, function() {
				$http({
					method: 'POST',
					url: '/api/check/' + attrs.ensureUnique,
					data: {'field': attrs.ensureUnique}
				}).success(function(data,status,headers,cfg) {
					c.$setValidity('unique', data.isUnique);
				}).error(function(data,status,headers,cfg) {
					c.$setValidity('unique', false);
				});
			});
		}
	}
});*/