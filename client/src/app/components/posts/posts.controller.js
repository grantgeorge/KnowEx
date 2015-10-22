(function() {
  'use strict';

  angular.module('know-ex')
    .controller('PostsController', function ($scope, $http, Posts, toastr) {

      Posts.query(function (res) {
        $scope.posts = res;
        for(var i = 0 ; i < $scope.posts.length; i++){

        	var now = new Date().getTime();
        	$scope.posts[i].elapsedTime = getElapsedTime($scope.posts[i].created_at, now);
          
        	console.log($scope.posts[i].elapsedTime);
        }
      });

        // Load new posts
        $scope.filter = function(filter){
          console.log("Loading " + filter);
          reloadPosts(filter,$scope, $http);
          toastr.info("Loaded Filter: " + filter);
          };
    });
})();

// Helper method for reloading different filtered posts
var reloadPosts = function(filter, $scope, $http){
    'use strict';
  console.log('api/v1/'+filter);
          $http.get('api/v1/'+filter).success(function(data) {

            for(var i = 0 ; i < data.length; i++){

              var now = new Date().getTime();
              data[i].elapsedTime = getElapsedTime(data[i].created_at, now);
              
              console.log(data[i].elapsedTime);

              $scope.posts = data;
            }
          });
        };

