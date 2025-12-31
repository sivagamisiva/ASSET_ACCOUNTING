/**
 * Enforce business rule that an Asset is capitalized only after an Invoice Receipt is created.
 * @After(event = { "CREATE" }, entity = "asset_accountingSrv.Invoices")
 * @param {(Object|Object[])} results - For the After phase only: the results of the event processing
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(results, request) {
  const { Assets, PurchaseOrders } = cds.entities;

  // Ensure results is an array for consistent processing
  if (!Array.isArray(results)) {
    results = [results];
  }

  for (const invoice of results) {
    if (!invoice || !invoice.poId) continue;

    // Fetch the Purchase Order associated with the Invoice
    const purchaseOrder = await SELECT.one.from(PurchaseOrders).where({ ID: invoice.poId });
    if (!purchaseOrder || !purchaseOrder.prId) continue;

    // Fetch the Asset associated with the Purchase Requisition linked to the Purchase Order
    const asset = await SELECT.one.from(Assets).where({ assetId_ID: purchaseOrder.prId });
    if (!asset) continue;

    // Update the Asset status to "Capitalized"
    await cds.run(UPDATE(Assets).set({ status: 'Capitalized' }).where({ ID: asset.ID }));
  }
}
