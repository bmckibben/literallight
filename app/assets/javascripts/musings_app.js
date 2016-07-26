var appMusing = angular.module('apMusingSearch', []);

appMusing.controller("ctlrMusingSearch", [
	'$scope',
	function($scope) {
		$scope.greeting = "Dude!";
		$scope.search = function(searchTerm) {
			$scope.searchedFor = searchTerm;
		}
	}
])






