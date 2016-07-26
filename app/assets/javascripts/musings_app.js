var appMusing = angular.module('apMusingSearch', []);

appMusing.controller("ctlrMusingSearch", [
	'$scope',
	function($scope) {
		$scope.greetting = "Dude!";
		$scope.search = function(searchTerm) {
			$scope.searchedFor = searchTerm;
		}
	}
])






