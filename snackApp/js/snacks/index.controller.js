'use strict';



(function() {
<<<<<<< HEAD
    'use strict';

    angular
        .module('snacks')
        .controller('IndexController', [
          "SnackFactory",
          IndexControllerFunction
        ]);

    function IndexControllerFunction(SnackFactory) {
      var vm = this;
      vm.snacks = SnackFactory.query();
      vm.countriesFound = [];
      vm.countries = SnackFactory.query(function(response){
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
        console.log(vm.countriesFound);
    };
=======

  angular
  .module('snacks')
  .controller('IndexController', [
    "SnackFactory",
    IndexControllerFunction
  ]);

  function IndexControllerFunction(SnackFactory) {
    this.snacks = SnackFactory.query();
    
  }
>>>>>>> directive
})();
