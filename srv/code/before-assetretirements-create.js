/**
 * Enforce business rule that Retirement is allowed only for active assets.
 * @Before(event = { "CREATE" }, entity = "asset_accountingSrv.AssetRetirements")
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
 */
module.exports = async function(request) {
  const { Assets } = cds.entities;
  const { assetId_ID } = request.data;

  if (!assetId_ID) {
    request.reject(400, 'Asset ID is required for retirement.');
    return;
  }

  const asset = await SELECT.one.from(Assets).where({ ID: assetId_ID });

  if (!asset) {
    request.reject(404, 'Asset not found.');
    return;
  }

  if (asset.status !== 'active') {
    request.reject(400, 'Retirement is allowed only for active assets.');
  }
}
