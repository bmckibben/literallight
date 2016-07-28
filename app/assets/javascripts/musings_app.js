var appMusing = angular.module('apMusingSearch', []);

appMusing.controller("ctlrMusingSearch", [
	'$scope', '$http', 
	function($scope, $http) {
		var page = 0;
		$scope.greeting = "Search Musings";
		$scope.musings = [];
		$scope.search = function(searchTerm) {
			if (searchTerm.length < 3){
				$scope.searchedFor = searchTerm;
				return;
			}
			$http.get("/angular_test/paging.json",
				{"params": {"searchwords" : searchTerm, "page" : page}}
				).success(
					function(data,status,headers,config){
						$scope.musings = data;
				}).error(
				function(data,status,headers,config){
					alert("Houston, we have a problem: " + status);
				});	
			$scope.searchedFor = searchTerm;
		};
		$scope.previousPage = function(){
			if (page > 0) {
				page = page - 1
				$scope.search($scope.searchwords)
			}	
		};
		$scope.nextPage = function(){
			page = page + 1
			$scope.search($scope.searchwords)
		};		
	}
])






