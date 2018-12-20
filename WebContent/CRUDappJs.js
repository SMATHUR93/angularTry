var app = angular.module('CRUDApp', []);
app.controller('CRUDAppController', function($scope,$http) {
	$scope.searchDataPresent=false;
	$scope.searchDataAbsent=false;
	$scope.errorSearch=false; 

	$scope.searchStores = function(searchStoresUsingName,searchStoresUsingID){
		console.log(searchStoresUsingName+" "+searchStoresUsingID);
		var responsePromise = $http.get("stores.txt");
		responsePromise.success(function(data,
				status, headers, config) {
			console.log(data);
			if(data){
				$scope.stores=data;
				$scope.searchDataPresent=true;
				$scope.searchDataAbsent=false;
				$scope.errorSearch=false; 
			}
			else{
				$scope.searchDataPresent=false;
				$scope.searchDataAbsent=true;
				$scope.noSearcherrorSearch=false;
			}
		})
		.error(function() {
			$scope.searchDataPresent=false;
			$scope.searchDataAbsent=false;
			$scope.errorSearch=true;
		});
	}
});