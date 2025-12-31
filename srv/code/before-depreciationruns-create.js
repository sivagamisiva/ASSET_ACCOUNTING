/**
 * Enforce business rule that Depreciation is allowed only for capitalized assets.
 * @Before(event = { "CREATE" }, entity = "asset_accountingSrv.DepreciationRuns")
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
 */
module.exports = async function(request) {
  const { Assets } = cds.entities;
  const { assetId_ID } = request.data;

  if (!assetId_ID) {
    request.reject(400, "Asset ID is required for depreciation.");
    return;
  }

  const asset = await SELECT.one.from(Assets).where({ ID: assetId_ID });

  if (!asset) {
    request.reject(404, "Asset not found.");
    return;
  }

  if (asset.status !== "Capitalized") {
    request.reject(400, "Depreciation is allowed only for capitalized assets.");
  }
}
