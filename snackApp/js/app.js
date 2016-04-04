"use strict";

(function(){
  angular
  .module("snackApp", [
    "ui.router",
    "snacks"
  ])
  .config([
    "stateProvider",
    RouteFunction
  ]);

  function RouteFunction($stateProvider){
    $stateProvider
    .state("main"), {
      url: "",
      templater: "Welcome to the Snack App"
    };
  }





})();
