(function() {
  'use strict';

  angular.module('know-ex')
    .controller('PostsController', function ($scope, $http, Posts) {

      Posts.query(function (res) {
        $scope.posts = res;
        for(var i = 0 ; i < $scope.posts.length; i++){

        	var now = new Date().getTime();
        	$scope.posts[i].elapsedTime = getElapsedTime($scope.posts[i].created_at, now);
          
        	console.log($scope.posts[i].elapsedTime);
        }

        $scope.loadPopular = function(){
          console.log("Tried to load popular");

          $http.get('/posts/popular').success(function(data) {
            $scope.posts = data;
          });

          //initial load
          $scope.loadPopular();
            };

      });

    });
})();
