//= require angular
//= require angular-resource
//= require angular-ui-router

"use strict";

(function(){
  angular
  .module("snackApp", [
    "ui.router",
    "snacks"
  ])
  .config([
    "$stateProvider",
    RouteFunction
  ]);

  function RouteFunction($stateProvider){
    $stateProvider
    .state("main", {
      url: "/snacks",
      templateUrl: "js/snacks/index.html",
      controller: 'IndexController',
      controllerAs:'SnackIndexVM'
    });
  }





})();
