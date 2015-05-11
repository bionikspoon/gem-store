'use strict'
gem = [
    {
        name: 'Diamond'
        price: 2.95
        canPurchase: true
        soldOut: false
    }
    {
        name: 'Topaz'
        price: 3.50
        canPurchase: true
        soldOut: false
    }
    {
        name: 'Azurite'
        price: 110.50
        canPurchase: false
        soldOut: true
    }
    {name: 'Bloodstone', price: 5.95}
    {name: 'Zircon', price: 3.95}
]

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
        constructor: ($scope) ->
            $scope.awesomeThings = [
                'HTML5 Boilerplate'
                'AngularJS'
                'Karma'
            ]
        products: gem
