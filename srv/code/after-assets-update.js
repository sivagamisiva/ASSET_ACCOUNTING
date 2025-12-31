/**
 * Automatically update asset status during each step of the asset lifecycle.
 * @After(event = { "UPDATE" }, entity = "asset_accountingSrv.Assets")
 * @param {(Object|Object[])} results - For the After phase only: the results of the event processing
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
 */
module.exports = async function(results, request) {
  const { PurchaseRequisitions, PurchaseOrders, GoodsReceipts, Invoices, AssetRetirements } = cds.entities;

  // Ensure results is an array for consistent processing
  if (!Array.isArray(results)) results = [results];

  for (const asset of results) {
    if (!asset || !asset.ID) continue; // Skip if asset is undefined or ID is missing

    let newStatus = asset.status;

    // Check related Purchase Requisitions
    const pr = await SELECT.one.from(PurchaseRequisitions).where({ assetId_ID: asset.ID });
    if (pr && pr.status === 'Approved') {
      newStatus = 'Awaiting Purchase Order';
    }

    // Check related Purchase Orders
    const po = await SELECT.one.from(PurchaseOrders).where({ prId_ID: pr ? pr.ID : null });
    if (po && po.approvalStatus === 'Approved') {
      newStatus = 'Awaiting Goods Receipt';
    }

    // Check related Goods Receipts
    const gr = await SELECT.one.from(GoodsReceipts).where({ poId_ID: po ? po.ID : null });
    if (gr && gr.status === 'Received') {
      newStatus = 'In Use';
    }

    // Check related Invoices
    const invoice = await SELECT.one.from(Invoices).where({ poId_ID: po ? po.ID : null });
    if (invoice && invoice.paymentStatus === 'Paid') {
      newStatus = 'Fully Paid';
    }

    // Check related Asset Retirements
    const retirement = await SELECT.one.from(AssetRetirements).where({ assetId_ID: asset.ID });
    if (retirement && retirement.retirementDate) {
      newStatus = 'Retired';
    }

    // Update asset status if changed
    if (newStatus !== asset.status) {
      asset.status = newStatus;
    }
  }
}
