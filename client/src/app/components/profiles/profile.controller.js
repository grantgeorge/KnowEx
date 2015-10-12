(function() {
  'use strict';

  angular.module('know-ex')
    .controller('ProfileController', function ($scope, Profiles, $stateParams) {

Profiles.get({profileId: $stateParams.profileId},function (res) {
        $scope.profile = res;
        
      });
    });
})();
