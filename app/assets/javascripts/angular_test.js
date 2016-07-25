//angular.module('angular_test',[ ]);

var app = angular.module('bob',[]);

var MusingSearchController = function($scope) {
	$scope.search = function(searchTerm){
		$scope.searchedFor = searchTerm;
	}
}

app.controller("MusingSearchController", ["$scope"],
	function($scope){
		$scope.search= function(searchTerm) {
			$scope.searchedFor = searchTerm;
		}
	})