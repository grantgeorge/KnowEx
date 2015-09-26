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
      .state('post', {
        url: '/posts/:postId',
        templateUrl: 'app/components/posts/post.html',
        controller: 'PostController'
      })
      .state('posts', {
        url: '/posts',
        templateUrl: 'app/components/posts/posts.html',
        controller: 'PostsController'
      })
      .state('about', {
        url: '/about',
        templateUrl: 'app/components/about/about.html',
        controller: 'AboutController'
      });

    $urlRouterProvider.otherwise('/');
  }

})();
