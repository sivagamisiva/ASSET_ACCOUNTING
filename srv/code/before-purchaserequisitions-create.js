/**
 * Enforce business rule that an Asset must exist before creating a Purchase Requisition.
 * @Before(event = { "CREATE" }, entity = "asset_accountingSrv.PurchaseRequisitions")
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
 */
module.exports = async function(request) {
  const { Assets } = cds.entities;
  
  const assetId = request.data.assetId_ID;
  if (!assetId) {
    request.reject(400, 'Asset ID is required to create a Purchase Requisition.');
    return;
  }

  const assetExists = await SELECT.one.from(Assets).where({ ID: assetId });
  if (!assetExists) {
    request.reject(404, `Asset with ID ${assetId} does not exist.`);
  }
}
