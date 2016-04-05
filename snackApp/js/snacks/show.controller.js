"use strict";

(function(){
  angular
  .module('snacks')
  .controller('SnackShowController', [
    "SnackFactory",
    "$stateParams",
    ShowFunction
  ])
  function ShowFunction(SnackFactory, $stateParams){
    this.snack = SnackFactory.get({id: $stateParams.id});
    this.editSnack = function(){
      this.toggleForm = !this.toggleForm
    }
  }
})();
