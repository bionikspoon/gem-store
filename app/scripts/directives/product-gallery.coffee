'use strict'

###*
 # @ngdoc directive
 # @name gemStoreApp.directive:productGallery
 # @description
 # # productGallery
###
angular.module 'gemStoreApp'
.directive 'productGallery', ->
    restrict: 'E'
    templateUrl: 'templates/product-gallery.html'
    controllerAs: 'gallery'
    controller: class
        imageIndex: 0
        setCurrent: (imageNumber) ->
            @imageIndex = imageNumber || 0

