(function() {
  'use strict';

  angular.module('know-ex')
    .controller('ProfileController', function ($scope, Profiles, $stateParams) {

      Profiles.get(function (res) {
        $scope.introduction = $scope.profile.introduction;
        console.log($scope.introduction);

      });

    });
})();
