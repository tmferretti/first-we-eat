(function () {
	"use strict";

	angular.module("app").controller("weeklyMenuController", function($scope, $sce) {
		$scope.currentRecipeUrl = "";
		

		$scope.changeWeeklyRecipe = function(recipeUrl) {
			$scope.trustSrc = function(recipeUrl) {
			    console.log(recipeUrl)
			    return $sce.trustAsResourceUrl(recipeUrl);
			}
			console.log($scope.trustSrc())
			$scope.currentRecipeUrl = $scope.trustSrc(recipeUrl);
		};

	});

})();