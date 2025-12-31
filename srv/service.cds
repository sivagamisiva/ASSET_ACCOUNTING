using { asset_accounting as my } from '../db/schema.cds';

@path: '/service/asset_accounting'
@requires: 'authenticated-user'
service asset_accountingSrv {
  @odata.draft.enabled
  entity Assets as projection on my.Assets;
  @odata.draft.enabled
  entity PurchaseRequisitions as projection on my.PurchaseRequisitions;
  @odata.draft.enabled
  entity PurchaseOrders as projection on my.PurchaseOrders;
  @odata.draft.enabled
  entity GoodsReceipts as projection on my.GoodsReceipts;
  @odata.draft.enabled
  entity Invoices as projection on my.Invoices;
  @odata.draft.enabled
  entity DepreciationRuns as projection on my.DepreciationRuns;
  @odata.draft.enabled
  entity AssetRetirements as projection on my.AssetRetirements;
  @odata.draft.enabled
  entity LegacyAssets as projection on my.LegacyAssets;
}