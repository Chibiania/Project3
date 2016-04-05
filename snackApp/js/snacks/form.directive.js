"use strict";

(function(){
  angular
  .module("snacks")
  .directive("snackForm", [
    "SnackFactory",
    "$state",
    SnackFormDirectiveFunction
  ]);

  function SnackFormDirectiveFunction(SnackFactory, $state){
    return{
      templateUrl: "js/snacks/form.html",
      scope: {
        snack: "="
      },
      link: function(scope){
        scope.create = function(){
          scope.snack.$save(function(response){
            $state.go("snackIndex", {}, {reload: true});
          });
        }
        scope.update = function(){
          scope.snack.$update({id: scope.snack.id},
            function(response){
              console.log(response);
            });
          };
          scope.delete = function(){
            scope.snack.$delete({id: scope.snack.id}, function(){
              $state.go("snackIndex", {}, {reload: true});
            })
          }
        }
      }
    }
  })();
