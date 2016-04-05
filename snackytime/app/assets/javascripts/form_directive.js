//= require angular
//= require angular-resource
//= require angular-ui-router


"use strict";

(function(){
  angular
  .module("snackApp")
  .directive("snackForm", [
    "SnackFactory",
    "$state",
    SnackFormDirectiveFunction
  ]);

  function SnackFormDirectiveFunction(SnackFactory, $state){
    return{
      templateUrl: "ng-views/snack.form.html",
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
