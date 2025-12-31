sap.ui.define([
    "sap/ui/core/UIComponent",
    "sap/ui/Device",
    "asset_accounting/dashboard/model/models"
], function (UIComponent, Device, models) {
    "use strict";

    return UIComponent.extend("asset_accounting.dashboard.Component", {

        metadata: {
            manifest: "json"
        },

        init: function () {
            // call the base component's init function
            UIComponent.prototype.init.apply(this, arguments);

            // enable routing
            this.getRouter().initialize();
        }
    });
});
