(function() {
  'use strict';

  angular.module('know-ex')
    .controller('PostController', function ($scope, Posts, $stateParams) {

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
      });

    });
})();
