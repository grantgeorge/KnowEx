(function() {
  'use strict';

  angular.module('know-ex')
    .controller('ProfilesController', function ($scope, Profiles) {

console.log('profile controller');

      Profiles.get({profileId: $stateParams.profileId},function (res) {
        $scope.profile = res;
        console.log($scope.profile);

        $scope.intro = $scope.profile.intro;
        console.log($scope.intro);

    });
})();
