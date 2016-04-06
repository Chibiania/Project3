"use strict";

(function(){
  angular
  .module('snacks')
  .controller('ShowController', [
    "SnackFactory",
    "CommentFactory",
    "$stateParams",
    ShowFunction
  ]);

  function ShowFunction(SnackFactory, CommentFactory, $stateParams){
    var vm = this;
    this.snack = SnackFactory.get({id: $stateParams.id});
    // this.comment = CommentFactory.get({snack_id: $stateParams.snackId});

//doesn't work yet
    CommentFactory.query({snack_id: $stateParams.snack_id});

    vm.comment = new CommentFactory();
    vm.comment.snack_id = 32;
    this.create = function(){
      // this.comment.$save();
      CommentFactory.save(vm.comment, function(test){
        console.log(response)
      });
    };


    // this.comment = new CommentFactory();
    // this.create = function(){
    //   this.comment.$save();
    // };
  }
})();
