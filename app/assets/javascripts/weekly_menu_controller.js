(function () {
	"use strict";

	angular.module("app").controller("weeklyMenuController", function($scope, $sce, UserService, $location, $anchorScroll) {
		$scope.currentRecipeUrl = "";
		$scope.iframeDisplay = false;
		$scope.clicked = false;

		$scope.trustSrc = function(SrcToBeTrusted) {
			    return $sce.trustAsResourceUrl(SrcToBeTrusted);
			};
		$scope.setup = function(passedSrc){
			// var corsUrl = "https://cors-anywhere.herokuapp.com/" + $scope.currentRecipeUrl;
			// console.log(passedSrc)
			$scope.currentRecipeUrl = passedSrc;
		   	// console.log($scope.currentRecipeUrl)
		    // var myElement = angular.element( document.querySelector( '#displayedRecipe' ) );
		    // console.log(myElement.text());

		    // console.log(window.frames['displayedRecipe'].document)

		 //    $scope.getMeta = angular.bind(this, function(url) {   
			//     var elFoo = window.frames['displayedRecipe'].document.getElementById('wrapper').clientHeight;
			//     console.log(window.frames)
			//     console.log(window.frames['displayedRecipe'].document.getElementById('wrapper').clientHeight)
			// })();

		 //    $.ajax({
		 //        crossOrigin: true,
		 //        url: 'https://cors-anywhere.herokuapp.com/' + $scope.currentRecipeUrl,
		 //        success: function(data) {
		 //            // console.log(data);
		 //        }
		 //    });
		}();
		// $scope.recipeHtml = "";
		// $scope.height = UserService.name;
		console.log($scope.currentRecipeUrl)
		$scope.changeWeeklyRecipe = function(recipeUrl) {
			console.log(recipeUrl)
			$scope.currentRecipeUrl = $scope.trustSrc(recipeUrl);
			$location.hash('anchor');
		    $anchorScroll();
		};
		
		$scope.showIframe = function(){
			$scope.iframeDisplay = true;

		};

		console.log($scope.currentRecipeUrl)
		// console.log($scope.height);

		// $.ajaxPrefilter( function (options) {
		//   if (options.crossDomain && jQuery.support.cors) {
		//     var http = (window.location.protocol === 'http:' ? 'http:' : 'https:');
		//     options.url = http + '//cors-anywhere.herokuapp.com/' + options.url;
		//     //options.url = "http://cors.corsproxy.io/url=" + options.url;
		//   }
		// });

		// $.get(
		//     $scope.currentRecipeUrl,
		//     function (response) {
		//         $scope.name = response
		//         // console.log("> ", response);
		//         $("#viewer").html(response);
		//         // console.log($scope.name);
		        
		// 	});
	});

		// $.getJSON("http://anyorigin.com/go?url=" + $scope.currentRecipeUrl + "&callback=?", function(data){
		// 	$('#wrapper').html(data.contents);
		// 	// console.log($('#wrapper'))
		// 	var myElement = angular.element(document.querySelector('#displayedRecipe'));
		//     console.log(myElement.contents());
		// });



		// $( "#displayedRecipe" ).on('load', function() { 
		//      var divElement = $(this).contents().find("#wrapper");
		//      console.log(divElement);
		//      var height     = divElement.height();
		//      $scope.count = height;
		//   })();


		



})();