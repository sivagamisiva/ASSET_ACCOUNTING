sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/core/UIComponent",
    "sap/ui/core/routing/History"
], function (Controller, UIComponent, History) {
    "use strict";

    return Controller.extend("asset_accounting.ui.controller.AssetMaster", {
        onInit: function () {
        },

        getRouter: function () {
            return UIComponent.getRouterFor(this);
        },

        onNavBack: function () {
            var oHistory = History.getInstance();
            var sPreviousHash = oHistory.getPreviousHash();

            if (sPreviousHash !== undefined) {
                window.history.go(-1);
            } else {
                this.getRouter().navTo("RouteDashboard", {}, true);
            }
        },

        onCreateAsset: function () {
            // Placeholder for create logic
            sap.m.MessageToast.show("Create Asset clicked");
        },

        onPressAsset: function (oEvent) {
            // Placeholder for detail navigation
            var oItem = oEvent.getSource();
            // var sPath = oItem.getBindingContext().getPath();
            sap.m.MessageToast.show("Navigating to detail...");
        }
    });
});
