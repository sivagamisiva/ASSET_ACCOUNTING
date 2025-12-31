namespace asset_accounting;
using { cuid, managed } from '@sap/cds/common';

entity Assets : cuid, managed {
  assetName: String(100);
  assetType: String(50);
  assetClass: String(50);
  costCenter: String(50);
  acquisitionValue: Decimal(10,2);
  capitalizationDate: Date;
  usefulLife: Integer;
  accumulatedDepreciation: Decimal(10,2);
  netBookValue: Decimal(10,2);
  status: String(20);
  assetId: Association to Assets;
}

@assert.unique: { prId: [prId] }
entity PurchaseRequisitions : cuid {
  prId: Integer @mandatory;
  quantity: Integer;
  estimatedCost: Decimal(10,2);
  status: String(20);
  assetId: Association to Assets;
}

@assert.unique: { poId: [poId] }
entity PurchaseOrders : cuid {
  poId: Integer @mandatory;
  vendorName: String(100);
  finalCost: Decimal(10,2);
  approvalStatus: String(20);
  prId: Association to PurchaseRequisitions;
}

@assert.unique: { grId: [grId] }
entity GoodsReceipts : cuid {
  grId: Integer @mandatory;
  receivedDate: Date;
  status: String(20);
  poId: Association to PurchaseOrders;
}

@assert.unique: { invoiceId: [invoiceId] }
entity Invoices : cuid {
  invoiceId: Integer @mandatory;
  invoiceAmount: Decimal(10,2);
  invoiceDate: Date;
  paymentStatus: String(20);
  poId: Association to PurchaseOrders;
}

@assert.unique: { depId: [depId] }
entity DepreciationRuns : cuid {
  depId: Integer @mandatory;
  fiscalPeriod: String(20);
  depreciationAmount: Decimal(10,2);
  runType: String(20);
  assetId: Association to Assets;
}

@assert.unique: { retirementId: [retirementId] }
entity AssetRetirements : cuid {
  retirementId: Integer @mandatory;
  retirementDate: Date;
  retirementValue: Decimal(10,2);
  reason: String(100);
  assetId: Association to Assets;
}

@assert.unique: { legacyAssetId: [legacyAssetId] }
entity LegacyAssets : cuid {
  legacyAssetId: Integer @mandatory;
  assetName: String(100);
  acquisitionValue: Decimal(10,2);
  accumulatedDepreciation: Decimal(10,2);
  migrationDate: Date;
}

