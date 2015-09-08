(function() {
  'use strict';

  angular.module('know-ex')
    .controller('PostsController', function ($scope, Posts) {

      Posts.query(function (res) {
        $scope.posts = res;
      });

    });
})();
