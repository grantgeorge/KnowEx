(function() {
  'use strict';

  angular.module('know-ex')
    .controller('PostsController', function ($scope, Posts) {

      Posts.query(function (res) {
        $scope.posts = res;
        var i;
        for(i in $scope.posts){
        	var now = new Date().getTime();
        	$scope.posts[i].created_at = getElapsedTime($scope.posts[i].created_at, now);;
        	console.log($scope.posts[i].elapsedTime);
        }
      });

    });
})();
