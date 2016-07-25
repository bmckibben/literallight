var app = angular.module('musings',[]);

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