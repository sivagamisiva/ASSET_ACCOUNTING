sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/library"
], function (Controller, mobileLibrary) {
    "use strict";

    var URLHelper = mobileLibrary.URLHelper;

    return Controller.extend("asset_accounting.dashboard.controller.Dashboard", {
        onNavigate: function (oEvent) {
            // Get the URL from the tile (generic tile doesn't pass it automatically in press event if we don't bind it, 
            // but we used 'url' property which might trigger default behavior or we can read it)
            // Actually, GenericTile 'press' event doesn't pass the URL if it's set as a property for external nav unless handled.
            // But UI5 1.50+ GenericTile navigation: 
            // If we use 'url' property, specific themes might make it an anchor.
            // However, to be safe and forceful in a freestyle app:
            var sUrl = oEvent.getSource().getUrl();
            if (sUrl) {
                // Prevent default default behavior if needed, or just let it happen. 
                // If 'url' is set on GenericTile, it acts as a link.
                // But for 'press' handler, let's ensure we control it if we want custom behavior.
                // We will just let the standard link behavior work if it renders as an anchor, 
                // BUT 'press' event is fired.
                // To force opening in same window (or new tab):
                sap.m.URLHelper.redirect(sUrl, false);
                // false = same window. 
            }
        }
    });
});
