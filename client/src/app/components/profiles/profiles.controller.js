(function() {
  'use strict';

  angular.module('know-ex')
    .controller('ProfilesController', function ($scope, Profiles) {

      Profiles.query(function (res) {
        $scope.profiles = res;
      });

    });
})();
