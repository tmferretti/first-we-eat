(function() {
  "use strict";

  var app = angular.module("app", []);

  app.factory('UserService', function() {
  return {
      name : 'anonymous'
  }});
}());