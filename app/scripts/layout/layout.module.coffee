'use strict';

SelectedUserValue = {}

class ContactSheetController
    @$inject: [ '$mdBottomSheet', 'SelectedUserValue' ]
    items: []
    selectedUser: {}
    constructor: (@$mdBottomSheet, @SelectedUserValue) ->
        @selectedUser = @SelectedUserValue.user
        @items = [
            {
                name: 'Phone'
                icon: 'phone'
                icon_url: 'images/phone.svg'
            }
            {
                name: 'Twitter'
                icon: 'twitter'
                icon_url: 'images/twitter.svg'
            }
            {
                name: 'Google+'
                icon: 'google_plus'
                icon_url: 'images/google_plus.svg'
            }
            {
                name: 'Hangout'
                icon: 'hangouts'
                icon_url: 'images/hangouts.svg'
            }
        ]
    hideAction: (action) ->
        $mdBottomSheet.hide(action)


class LayoutController
    @$inject: [ '$scope', '$mdMedia', '$mdBottomSheet', '$mdSidenav', '$q' ]
    constructor: ($scope, $mdMedia, @$mdBottomSheet, @$mdSidenav, @$q) ->
    toggleNavList: ->
        pending = @$mdBottomSheet.hide() or @$q.when true
        pending.then =>
            @$mdSidenav('left').toggle()
            return
        return


class UsersController
    @$inject: [ '$scope',
        'UserService',
        '$mdBottomSheet',
        '$log',
        'SelectedUserValue' ]
    users: []

    selectUser: (user) ->
        @SelectedUserValue.user = user
        @selectedUser = user

    @selectedUser: {}

    constructor: (@$scope, UserService, @$mdBottomSheet, @$log, @SelectedUserValue) ->
        UserService.loadAllUsers().then (users) =>

            @users = users
            @selectUser(if @users.length then @users[0] else {})


    share: ($event) ->
        @$mdBottomSheet.show({
            parent: angular.element document.getElementById 'content'
            templateUrl: 'views/templates/contact-sheet.html'
            controller: ContactSheetController
            controllerAs: 'vm'
            bindToController: true
            targetEvent: $event
        }).then (clickedItem) =>
            clickedItem && @$log.debug('clickedItem.name' + ' clicked')

angular
.module 'layoutModule', [
    'ngAnimate',
    'ngAria',
    'ngMaterial',
    'ngRoute'
]
.value 'SelectedUserValue', SelectedUserValue
.controller 'UsersController', UsersController
.config ($routeProvider) ->
    return $routeProvider
    .when '/',
        templateUrl: 'views/layout.html'
        controller: LayoutController
        controllerAs: 'vm'
.config ($mdIconProvider) ->
    return $mdIconProvider
    .defaultIconSet 'images/avatars.svg', 128
