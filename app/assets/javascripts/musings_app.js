var app = angular.module('musings',[]);


app.controller("MusingSearchController", [
	'$scope',
	function($scope){
		alert("line 7");
		$scope.search = function(searchTerm) {
			$scope.searchedFor = searchTerm;
			alert("line 10");
		}
	}	
	]);