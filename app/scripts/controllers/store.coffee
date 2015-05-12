'use strict'

###*
 # @ngdoc function
 # @name gemStoreApp.controller:StoreCtrl
 # @description
 # # StoreCtrl
 # Controller of the gemStoreApp
###
angular.module 'gemStoreApp'
.controller 'StoreCtrl',
            class StoreCtrl
                @$inject: ['$http']
                constructor: ($http)->
                    @products = []
                    $http.get 'products.json'
                    .success (result) =>
                        @products = result
