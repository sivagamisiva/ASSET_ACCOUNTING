/**
 * Enforce business rule that a Purchase Order must be approved before creating or updating a Goods Receipt.
 * @Before(event = { "CREATE","UPDATE" }, entity = "asset_accountingSrv.PurchaseOrders")
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
*/
module.exports = async function(request) {
  const { PurchaseOrders } = cds.entities;
  
  // Extract the Purchase Order ID from the request data
  const poId = request.data.poId;
  
  // Check if poId is defined
  if (poId !== undefined) {
    // Fetch the Purchase Order to check its approval status
    const purchaseOrder = await SELECT.one.from(PurchaseOrders).where({ poId });
    
    // If the Purchase Order exists and is not approved, throw an error
    if (purchaseOrder && purchaseOrder.approvalStatus !== 'Approved') {
      request.reject(400, 'Purchase Order must be approved before creating or updating a Goods Receipt.');
    }
  }
};
