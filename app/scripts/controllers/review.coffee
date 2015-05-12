'use strict'

###*
 # @ngdoc function
 # @name gemStoreApp.controller:ReviewCtrl
 # @description
 # # ReviewCtrl
 # Controller of the gemStoreApp
###
angular.module 'gemStoreApp'
    .controller 'ReviewCtrl',
            class ReviewCtrl
                review:{}

                addReview: (product) ->
                    @review.date = Date.now();
                    product.reviews.push(@review)
                    @review = {}
