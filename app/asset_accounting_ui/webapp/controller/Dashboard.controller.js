sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/core/UIComponent"
], function (Controller, UIComponent) {
    "use strict";

    return Controller.extend("asset_accounting.ui.controller.Dashboard", {
        onInit: function () {
        },

        getRouter: function () {
            return UIComponent.getRouterFor(this);
        },

        onPressAssetMaster: function () {
            this.getRouter().navTo("RouteAssetMaster");
        },

        onPressPurchaseRequisition: function () {
            this.getRouter().navTo("RoutePurchaseRequisition");
        },

        onPressPurchaseOrder: function () {
            this.getRouter().navTo("RoutePurchaseOrder");
        },

        onPressPoApproval: function () {
            this.getRouter().navTo("RoutePoApproval");
        },

        onPressGoodsReceipt: function () {
            this.getRouter().navTo("RouteGoodsReceipt");
        },

        onPressInvoiceReceipt: function () {
            this.getRouter().navTo("RouteInvoiceReceipt");
        },

        onPressDepreciationRun: function () {
            this.getRouter().navTo("RouteDepreciationRun");
        },

        onPressAssetRetirement: function () {
            this.getRouter().navTo("RouteAssetRetirement");
        },

        onPressLegacyAsset: function () {
            this.getRouter().navTo("RouteLegacyAsset");
        }
    });
});
