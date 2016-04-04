"use strict";

(function(){
  angular
  .module("snacks")
  .controller("SnackShowController", [
    "SnackFactory",
    "$stateParams",
    SnackShowControllerFunction
  ]);

  function SnackShowControllerFunction(SnackFactory, $stateParams){
    this.snack = SnackFactory.get({id: $stateParams.id});
  }
}());
