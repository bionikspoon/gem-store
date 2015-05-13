'use strict'

class ReviewCtrl
    review:
        stars: 3

    addReview: (product) ->
        @review.date = Date.now();
        product.reviews.push(@review)
        @review = {}
        $scope.stars = 3

###*
 # @ngdoc directive
 # @name gemStoreApp.directive:reviewForm
 # @description
 # # reviewForm
###
angular.module 'gemStoreApp'
.directive 'productReviewForm', ->
    restrict: 'E'
    templateUrl: 'views/templates/product-review-form.html'
    controller: ReviewCtrl
    controllerAs: 'ReviewCtrl'
