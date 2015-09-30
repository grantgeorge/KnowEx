(function() {
  'use strict';

  angular.module('know-ex')
    .factory('Profiles', function ($resource) {
      return $resource('api/v1/profiles/:profileId', {
        profileId: '@id'
      }, {
        update: {
          method: 'PUT'
        }
      });
    });

})();
