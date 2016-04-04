'use strict';
(function() {

  angular
  .module('snacks')
  .factory('factory', [
    "$resource",
    SnackFactoryFunction
  ]);
  function SnackFactoryFunction($resource){
    return $resource("http://localhost:3000/snacks/:id", {}, {
      update: {method: "PUT"}
    });
  }
})();
