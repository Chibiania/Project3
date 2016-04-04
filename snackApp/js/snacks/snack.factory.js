'use strict';
(function() {

  angular
  .module('snacks')
  .factory('SnackFactory', [
    "$resource",
    SnackFactoryFunction
  ]);
  function SnackFactoryFunction($resource){
    return $resource("http://localhost:3000/snacks/:id");
  }
})();
