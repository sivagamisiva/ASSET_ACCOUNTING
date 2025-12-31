sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/core/UIComponent",
    "sap/ui/core/routing/History",
    "sap/ui/model/json/JSONModel",
    "sap/m/MessageToast"
], function (Controller, UIComponent, History, JSONModel, MessageToast) {
    "use strict";

    return Controller.extend("asset_accounting.ui.controller.CreateAsset", {
        onInit: function () {
            var oInputModel = new JSONModel({
                assetName: "",
                assetType: "Tangible",
                assetClass: "",
                costCenter: "",
                acquisitionValue: 0,
                usefulLife: 0,
                capitalizationDate: null
            });
            this.getView().setModel(oInputModel, "inputModel");
        },

        getRouter: function () {
            return UIComponent.getRouterFor(this);
        },

        onNavBack: function () {
            // Reset fields
            this.getView().getModel("inputModel").setData({
                assetName: "",
                assetType: "Tangible",
                assetClass: "",
                costCenter: "",
                acquisitionValue: 0,
                usefulLife: 0,
                capitalizationDate: null
            });

            var oHistory = History.getInstance();
            var sPreviousHash = oHistory.getPreviousHash();

            if (sPreviousHash !== undefined) {
                window.history.go(-1);
            } else {
                this.getRouter().navTo("RouteAssetMaster", {}, true);
            }
        },

        onCancel: function () {
            this.onNavBack();
        },

        onSave: function () {
            var oView = this.getView();
            var oInputData = oView.getModel("inputModel").getData();
            var oModel = oView.getModel(); // OData V4 Model

            if (!oInputData.assetName) {
                MessageToast.show("Please enter an Asset Name.");
                return;
            }

            // Create a list binding to /Assets to call create()
            var oListBinding = oModel.bindList("/Assets");

            var oEntry = {
                assetName: oInputData.assetName,
                assetType: oInputData.assetType,
                assetClass: oInputData.assetClass,
                costCenter: oInputData.costCenter,
                acquisitionValue: parseFloat(oInputData.acquisitionValue),
                usefulLife: parseInt(oInputData.usefulLife),
                capitalizationDate: oInputData.capitalizationDate,
                status: "Active"
            };

            oListBinding.create(oEntry).created().then(function () {
                MessageToast.show("Asset Created Successfully");
                this.onNavBack();
            }.bind(this)).catch(function (oError) {
                MessageToast.show("Error creating asset: " + oError.message);
            });
        }
    });
});
