(function() {
  'use strict';

  angular.module('know-ex')
    .factory('Posts', function ($resource) {
      return $resource('api/v1/posts/:postId', {
        postId: '@id'
      }, {
        update: {
          method: 'PUT'
        }
      });
    });

})();
