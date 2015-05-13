'use strict'

class StoreCtrl
    @$inject: [ '$http' ]
    products: []
    constructor: ($http)->
        $http.get 'products.json'
        .success (result) =>
            @products = result

###*
 # @ngdoc function
 # @name gemStoreApp.controller:StoreCtrl
 # @description
 # # StoreCtrl
 # Controller of the gemStoreApp
###
angular.module 'gemStoreApp'
.controller 'StoreCtrl', StoreCtrl



