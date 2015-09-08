(function() {
  'use strict';

  angular
    .module('know-ex')
    .run(runBlock);

  /** @ngInject */
  function runBlock($log) {

    $log.debug('runBlock end');
  }

})();
