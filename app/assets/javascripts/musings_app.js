var appMusing = angular.module('apMusingSearch', []);

appMusing.controller("ctlrMusingSearch", [
	'$scope',
	function($scope) {
		$scope.greeting = "Search Musings";
		$scope.musings = [];
		$scope.search = function(searchTerm) {
			$scope.musings = [
			{"entry_for" : "2016-01-02",
			 "note" : "test  note january"
			},
		    {"entry_for" : "2016-02-02",
			"note" : "test  note february"
			},
			{"entry_for" : "2016-02-02",
			"note" : "test  note march"
			}	
			],
			$scope.searchedFor = searchTerm;
		};
	}
])






