/**
 * Enforce business rule that a Goods Receipt must exist before creating an Invoice Receipt.
 * @Before(event = { "CREATE" }, entity = "asset_accountingSrv.Invoices")
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
 */
module.exports = async function(request) {
  const { GoodsReceipts } = cds.entities;
  const { poId } = request.data;

  if (!poId) {
    return request.reject(400, 'Purchase Order ID is required to create an Invoice.');
  }

  const goodsReceiptExists = await SELECT.one.from(GoodsReceipts).where({ poId });

  if (!goodsReceiptExists) {
    return request.reject(400, 'A Goods Receipt must exist for the specified Purchase Order before creating an Invoice.');
  }
};
