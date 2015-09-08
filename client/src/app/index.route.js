(function() {
  'use strict';

  angular
    .module('know-ex')
    .config(routeConfig);

  /** @ngInject */
  function routeConfig($stateProvider, $urlRouterProvider) {
    $stateProvider
      .state('home', {
        url: '/',
        templateUrl: 'app/main/main.html',
        controller: 'MainController',
        controllerAs: 'main'
      })
      .state('articles', {
        url: '/articles',
        templateUrl: 'app/components/articles/articles.html',
        controller: 'ArticlesController'
      })
      .state('posts', {
        url: '/posts',
        templateUrl: 'app/components/posts/posts.html',
        controller: 'PostsController'
      });

    $urlRouterProvider.otherwise('/');
  }

})();
