(function() {
  'use strict';

  angular.module('know-ex')
    .controller('PostController', function ($scope, $http, Posts, $stateParams) {

      console.log('post controller');

      Posts.get({postId: $stateParams.postId},function (res) {
        $scope.post = res;
        console.log($scope.post);
        $scope.tags = $scope.post.tags;
        // $scope.tags = _.countBy($scope.post.tags, function(tag){ return tag.name; });
        console.log($scope.tags);
        $scope.endorsements = $scope.post.endorsements;
        
        $scope.advices = $scope.post.advices;
        console.log($scope.endorsements);
        console.log($scope.advices);
        
        var now = new Date().getTime();
        $scope.post.elapsedTime = getElapsedTime($scope.post.created_at, now);
        console.log($scope.post.elapsedTime);

        // Determine age of each post
        for(var i = 0 ; i < $scope.endorsements.length ; i++){
          $scope.endorsements[i].elapsedTime = getElapsedTime($scope.endorsements[i].created_at, now);
          console.log("Endorsement " + $scope.endorsements[i].elapsedTime);
        }



      });

      $scope.submitResponse = function($scope, $http){
          'use strict';
          var responseText = document.getElementById("responseText").value;
          // TODO: Get type from button dropdown. Having trouble..
          // var responseType = $('#responseType').find(":selected").value;
          var responseType = "Endorsement";
          var tags = document.getElementById("tags").value;
          console.log(tags  + " - " + responseText + " - " + responseType);
          var data = {
                    text: responseText, 
                    user_id: 2, 
                    endorseable_id: 1, 
                    endorseable_type: "Post"
                };
          $http.post("/endorsements", data);

            };
          });
})();
