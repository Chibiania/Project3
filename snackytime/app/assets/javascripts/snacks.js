//= require angular
//= require angular-resource
//= require angular-ui-router

"use strict";

(function(){
  angular
  .module("snackApp", [
    "ui.router",
    "ngResource"
    // "snacks"
  ])
  .config([
    "$stateProvider",
    RouteFunction
  ])
  .factory("SnackFactory", [
    "$resource",
    SnackFactoryFunction
  ])
  .controller("IndexController", [
    "SnackFactory",
    IndexControllerFunction
  ])
  .controller("ShowController", [
    "SnackFactory",
    "$stateParams",
    ShowControllerFunction
  ]);

  function RouteFunction($stateProvider){
    $stateProvider
    .state("index", {
      url: "/",
      templateUrl: "ng-views/snack.index.html",
      controller: 'IndexController',
      controllerAs:'SnackIndexVM'
    })
    .state("show", {
      url: "/:id",
      templateUrl: "ng-views/snack.show.html",
      controller: "ShowController",
      controllerAs: "SnackShowVM"
    });
  }

  // SnackFactoryFunction
  function SnackFactoryFunction($resource){
    var Snack = $resource("/snacks/:id.json", {}, {
      update: {method: "PUT"}
    });
    Snack.all = Snack.query();
    return Snack;
  }

  //CommentFactoryFunction
  function CommentFactoryFunction($resource){

  }

  //IndexControllerFunction
  function IndexControllerFunction(Snack) {
    var vm = this;
    // lists all snacks and properties
    vm.snacks = Snack.all;
    vm.countriesFound = [];

    // lists all unique countries
    vm.countries = Snack.query(function(response){
      response.forEach(function(snack){
        for(var prop in snack){
          if(prop == 'country'){
            var countryCheck = vm.countriesFound.indexOf(snack[prop]);
            if(countryCheck == -1){
              vm.countriesFound.push(snack[prop]);
            }
          }
        }
      });
    });
    vm.countrySearch = function(criteria){
      vm.countryCategory = criteria
      console.log('country clicked: ' + vm.countryCategory);
    };

    console.log(vm.countriesFound);
  }
  
  function ShowControllerFunction(SnackFactory, CommentFactory, $stateParams){
    var vm = this;
    vm.snack = SnackFactory.get({id: $stateParams.id});

    // comment function
    CommentFactory.query({snack_id: $stateParams.snack_id});
    vm.comment = new CommentFactory();
    vm.comment.snack_id = vm.snack;
    this.create = function(){
      vm.comment.$save();
      // setup with snacks db (gets added to the end of the db)...does comments need its own db?
      // is save as a new snack but needs to be saved as a comment with comment attributes
      //
      // console.log(test);
    };
  }

  // edit function
  this.editSnack = function(){
    vm.snack.$save();
    this.toggleForm = !this.toggleForm
  }
}

})();
