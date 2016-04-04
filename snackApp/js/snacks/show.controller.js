"use strict";

(function(){
  angular
  .module('snacks')
  .controller('ShowController', [
    "SnackFactory",
    "$stateParams",
    ShowFunction
  ])
  function ShowFunction(SnackFactory, $stateParams){
    this.snack = SnackFactory.get({id: $stateParams.id});
  }
})();
