var appMusing = angular.module('angular_test',[ ]);

appMusing.controller('MusingSearchController', [
  '$scope',
  function($scope){
    $scope.greeting = 'Sup!';
  }
]);