'use strict'

class GalleryCtrl
    imageIndex: 0
    setCurrent: (imageNumber) ->
        @imageIndex = imageNumber || 0

###*
 # @ngdoc directive
 # @name gemStoreApp.directive:productGallery
 # @description
 # # productGallery
###
angular.module 'gemStoreApp'
.directive 'productGallery', ->
    restrict: 'E'
    templateUrl: 'views/templates/product-gallery.html'
    controllerAs: 'gallery'
    controller: GalleryCtrl
