'use strict'

###*
 # @ngdoc overview
 # @name gemStoreApp
 # @description
 # # gemStoreApp
 #
 # Main module of the application.
###
angular
.module 'gemStoreApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
]
.config ($routeProvider) ->
    $routeProvider \
        .when '/',
              templateUrl: 'views/store.html'
              controller: 'StoreCtrl'
              controllerAs: 'store'
        .when '/about',
              templateUrl: 'views/about.html'
              controller: 'AboutCtrl'
        .when '/about',
              templateUrl: 'views/about.html'
              controller: 'AboutCtrl'
        .otherwise
                redirectTo: '/'

