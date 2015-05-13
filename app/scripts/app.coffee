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
    'ngTouch',
    'ngLocale',
    'ngMaterial'
]
.config ($routeProvider) ->
    return $routeProvider
    .when '/',
        templateUrl: 'views/main.html'
    .when '/store',
        templateUrl: 'views/store.html'
        controller: 'StoreCtrl'
        controllerAs: 'store'
    .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
    .otherwise
            redirectTo: '/'

.config ($mdThemingProvider) ->
    $mdThemingProvider.theme('default')
        .primaryPalette('pink')
        .accentPalette('indigo');
