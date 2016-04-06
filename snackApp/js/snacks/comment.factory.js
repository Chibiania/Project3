"use strict";

(function(){
  angular
  .module("snacks")
  .factory("CommentFactory", [
    "$resource",
    CommentFactoryFunction
  ]);

  function CommentFactoryFunction($resource){
    return $resource("http://localhost:3000/snacks/:id.json");
  }
}());
