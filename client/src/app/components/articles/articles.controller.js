(function() {
  'use strict';

  angular.module('know-ex')
    .controller('ArticlesController', function ($scope, Articles) {

      Articles.query(function (res) {
        $scope.articles = res;
      });

    });
})();
