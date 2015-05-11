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
        @$inject: ['$scope', '$http']
        constructor: (@$scope, @$http)->
            @$scope.awesomeThings = [
                'HTML5 Boilerplate'
                'AngularJS'
                'Karma'
            ]

            @$http.get 'scripts/store-products.json'
            .success (result) =>
                @products = result




