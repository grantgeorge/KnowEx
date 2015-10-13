(function() {
  'use strict';

  angular.module('know-ex')
    .controller('PostsController', function ($scope, $http, Posts) {

      Posts.query(function (res) {
        $scope.posts = res;
        for(var i = 0 ; i < $scope.posts.length; i++){

        	var now = new Date().getTime();
        	//$scope.posts[i].elapsedTime = getElapsedTime($scope.posts[i].created_at, now);
          
        	console.log($scope.posts[i].elapsedTime);
        }
      });
        // Load all popular posts
        $scope.loadPopular = function(){
          console.log("Tried to load popular");

          $http.get('api/v1/popular').success(function(data) {
            $scope.posts = data;

            for(var i = 0 ; i < $scope.posts.length; i++){

              var now = new Date().getTime();
              //$scope.posts[i].elapsedTime = getElapsedTime($scope.posts[i].created_at, now);
              
              console.log($scope.posts[i].elapsedTime);
            }
            // toastr.info("Most endorsed posts!");

          });

        };

        // Load new posts
        $scope.loadNew = function(){
          console.log("Loading new");

          $http.get('api/v1/newest').success(function(data) {
            $scope.posts = data;

            for(var i = 0 ; i < $scope.posts.length; i++){

              var now = new Date().getTime();
              //$scope.posts[i].elapsedTime = getElapsedTime($scope.posts[i].created_at, now);
              
              console.log($scope.posts[i].elapsedTime);
            }
            // toastr.info("Posts from this month!!");

          });

        };

        // Load all hot posts
        $scope.loadHot = function(){
          console.log("Loading hot");

          $http.get('api/v1/hot').success(function(data) {
            $scope.posts = data;

            for(var i = 0 ; i < $scope.posts.length; i++){

              var now = new Date().getTime();
              //$scope.posts[i].elapsedTime = getElapsedTime($scope.posts[i].created_at, now);
              
              console.log($scope.posts[i].elapsedTime);
            }
            // toastr.info("Best Posts from last 2 weeks!");

          });

        };

    });
})();
