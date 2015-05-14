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
    'ngMaterial',
    'layoutModule'
]
.config ($mdThemingProvider) ->
    return $mdThemingProvider.theme('default')
    .primaryPalette('pink')
    .accentPalette('indigo');
.config ($routeProvider) ->
    return $routeProvider
    .when '/store',
        templateUrl: 'views/store.html'
        controller: 'StoreCtrl'
        controllerAs: 'store'
    .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
    .otherwise
            redirectTo: '/'
