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
        imageIndex: 0
        setCurrent: (imageNumber) ->
            @imageIndex = imageNumber || 0
