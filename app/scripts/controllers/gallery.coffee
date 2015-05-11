'use strict'

###*
 # @ngdoc function
 # @name gemStoreApp.controller:GalleryCtrl
 # @description
 # # GalleryCtrl
 # Controller of the gemStoreApp
###
angular.module 'gemStoreApp'
.controller 'GalleryCtrl',
    class GalleryCtrl
        constructor: ($scope) ->
            $scope.awesomeThings = [
                'HTML5 Boilerplate'
                'AngularJS'
                'Karma'
            ]
        imageIndex: 0
        setCurrent: (imageNumber) ->
            @imageIndex = imageNumber || 0
