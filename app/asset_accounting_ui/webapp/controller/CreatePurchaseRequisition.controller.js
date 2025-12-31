sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/core/UIComponent",
    "sap/ui/core/routing/History",
    "sap/ui/model/json/JSONModel",
    "sap/m/MessageToast"
], function (Controller, UIComponent, History, JSONModel, MessageToast) {
    "use strict";

    return Controller.extend("asset_accounting.ui.controller.CreatePurchaseRequisition", {
        onInit: function () {
            var oInputModel = new JSONModel({
                prId: null,
                quantity: 1,
                estimatedCost: 0
            });
            this.getView().setModel(oInputModel, "inputModel");
        },

        getRouter: function () {
            return UIComponent.getRouterFor(this);
        },

        onNavBack: function () {
            this.getView().getModel("inputModel").setData({
                prId: null,
                quantity: 1,
                estimatedCost: 0
            });

            var oHistory = History.getInstance();
            var sPreviousHash = oHistory.getPreviousHash();

            if (sPreviousHash !== undefined) {
                window.history.go(-1);
            } else {
                this.getRouter().navTo("RoutePurchaseRequisition", {}, true);
            }
        },

        onCancel: function () {
            this.onNavBack();
        },

        onSave: function () {
            var oView = this.getView();
            var oInputData = oView.getModel("inputModel").getData();
            var oModel = oView.getModel();

            if (!oInputData.prId) {
                MessageToast.show("Please enter a PR ID.");
                return;
            }

            var oListBinding = oModel.bindList("/PurchaseRequisitions");

            var oEntry = {
                prId: parseInt(oInputData.prId),
                quantity: parseInt(oInputData.quantity),
                estimatedCost: parseFloat(oInputData.estimatedCost),
                status: "Pending" // Default status
            };

            oListBinding.create(oEntry).created().then(function () {
                MessageToast.show("PR Created Successfully");
                this.onNavBack();
            }.bind(this)).catch(function (oError) {
                MessageToast.show("Error creating PR: " + oError.message);
            });
        }
    });
});
