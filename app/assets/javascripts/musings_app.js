var app = angular.module('musings',[]);


app.controller("MusingSearchController", [
	"$scope",
	function($scope){
		$scope.search= function(searchTerm) {
			$scope.searchedFor = searchTerm;
		}
	}	
	]);