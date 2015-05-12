'use strict'

###*
 # @ngdoc function
 # @name gemStoreApp.controller:PanelCtrl
 # @description
 # # PanelCtrl
 # Controller of the gemStoreApp
###
angular.module 'gemStoreApp'
.controller 'PanelCtrl',
    class PanelCtrl
        tab: 1
        selectTab: (setTab) ->
            @tab = setTab

        isSelected: (checkTab) ->
            @tab == checkTab


