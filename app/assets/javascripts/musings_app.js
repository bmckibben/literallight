var appMusing = angular.module('apMusingSearch', []);

appMusing.controller("ctlrMusingSearch", [
	'$scope', '$http', 
	function($scope, $http) {
		$scope.greeting = "Search Musings";
		$scope.musings = [];
		$scope.search = function(searchTerm) {
			$http.get("/journals/musing.json",
				{"params": {"searchwords" : searchTerm}}
				).success(
					function(data,status,headers,config){
						$scope.musings = data;
				}).error(
				function(data,status,headers,config){
					alert("Houston, we have a problem: " + status);
				});	
			$scope.searchedFor = searchTerm;
		};
	}
])






