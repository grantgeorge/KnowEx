(function() {
  'use strict';

  angular.module('know-ex')
    .factory('Articles', function ($resource) {
      return $resource('api/v1/articles/:articleId', {
        articleId: '@id'
      }, {
        update: {
          method: 'PUT'
        }
      });
    });
})();
