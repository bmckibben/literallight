var appMusing = angular.module('appMusing',[]);


appMusing.controller('angular_test', [
	'$scope',
	function($scope){
		$scope.greeting = 'Sup!';
	}
]);