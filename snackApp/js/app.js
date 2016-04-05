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
    })
    .state("snackShow", {
      url: "/snacks/:id",
      templateUrl: "js/snacks/show.html",
      controller: "SnackShowController",
      controllerAs: "SnackShowViewModel"
    });

};


  })();
