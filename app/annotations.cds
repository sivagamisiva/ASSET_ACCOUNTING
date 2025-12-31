using { asset_accountingSrv } from '../srv/service.cds';

annotate asset_accountingSrv.Assets with @UI.HeaderInfo: { TypeName: 'Asset', TypeNamePlural: 'Assets' };
annotate asset_accountingSrv.Assets with {
  assetId @Common.ValueList: {
    CollectionPath: 'Assets',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: assetId_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'assetName'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'assetType'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'assetClass'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'costCenter'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'acquisitionValue'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'capitalizationDate'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'usefulLife'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'accumulatedDepreciation'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'netBookValue'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'status'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedBy'
      },
    ],
  }
};
annotate asset_accountingSrv.Assets with {
  assetName @title: 'Asset Name';
  assetType @title: 'Asset Type';
  assetClass @title: 'Asset Class';
  costCenter @title: 'Cost Center';
  acquisitionValue @title: 'Acquisition Value';
  capitalizationDate @title: 'Capitalization Date';
  usefulLife @title: 'Useful Life';
  accumulatedDepreciation @title: 'Accumulated Depreciation';
  netBookValue @title: 'Net Book Value';
  status @title: 'Status';
  createdAt @title: 'Created At';
  createdBy @title: 'Created By';
  modifiedAt @title: 'Modified At';
  modifiedBy @title: 'Modified By'
};

annotate asset_accountingSrv.Assets with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: assetName },
 { $Type: 'UI.DataField', Value: assetType },
 { $Type: 'UI.DataField', Value: assetClass },
 { $Type: 'UI.DataField', Value: costCenter },
 { $Type: 'UI.DataField', Value: acquisitionValue },
 { $Type: 'UI.DataField', Value: capitalizationDate },
 { $Type: 'UI.DataField', Value: usefulLife },
 { $Type: 'UI.DataField', Value: accumulatedDepreciation },
 { $Type: 'UI.DataField', Value: netBookValue },
 { $Type: 'UI.DataField', Value: status },
    { $Type: 'UI.DataField', Label: 'Asset', Value: assetId_ID }
];

annotate asset_accountingSrv.Assets with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: assetName },
 { $Type: 'UI.DataField', Value: assetType },
 { $Type: 'UI.DataField', Value: assetClass },
 { $Type: 'UI.DataField', Value: costCenter },
 { $Type: 'UI.DataField', Value: acquisitionValue },
 { $Type: 'UI.DataField', Value: capitalizationDate },
 { $Type: 'UI.DataField', Value: usefulLife },
 { $Type: 'UI.DataField', Value: accumulatedDepreciation },
 { $Type: 'UI.DataField', Value: netBookValue },
 { $Type: 'UI.DataField', Value: status },
 { $Type: 'UI.DataField', Value: createdAt },
 { $Type: 'UI.DataField', Value: createdBy },
 { $Type: 'UI.DataField', Value: modifiedAt },
 { $Type: 'UI.DataField', Value: modifiedBy },
    { $Type: 'UI.DataField', Label: 'Asset', Value: assetId_ID }
  ]
};

annotate asset_accountingSrv.Assets with {
  assetId @Common.Label: 'Asset'
};

annotate asset_accountingSrv.Assets with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate asset_accountingSrv.Assets with @UI.SelectionFields: [
  assetId_ID
];

annotate asset_accountingSrv.PurchaseRequisitions with @UI.HeaderInfo: { TypeName: 'Purchase Requisition', TypeNamePlural: 'Purchase Requisitions', Title: { Value: prId } };
annotate asset_accountingSrv.PurchaseRequisitions with {
  ID @UI.Hidden @Common.Text: { $value: prId, ![@UI.TextArrangement]: #TextOnly }
};
annotate asset_accountingSrv.PurchaseRequisitions with @UI.Identification: [{ Value: prId }];
annotate asset_accountingSrv.PurchaseRequisitions with {
  assetId @Common.ValueList: {
    CollectionPath: 'Assets',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: assetId_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'assetName'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'assetType'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'assetClass'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'costCenter'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'acquisitionValue'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'capitalizationDate'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'usefulLife'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'accumulatedDepreciation'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'netBookValue'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'status'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedBy'
      },
    ],
  }
};
annotate asset_accountingSrv.PurchaseRequisitions with {
  prId @title: 'PR ID';
  quantity @title: 'Quantity';
  estimatedCost @title: 'Estimated Cost';
  status @title: 'Status'
};

annotate asset_accountingSrv.PurchaseRequisitions with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: prId },
 { $Type: 'UI.DataField', Value: quantity },
 { $Type: 'UI.DataField', Value: estimatedCost },
 { $Type: 'UI.DataField', Value: status },
    { $Type: 'UI.DataField', Label: 'Asset', Value: assetId_ID }
];

annotate asset_accountingSrv.PurchaseRequisitions with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: prId },
 { $Type: 'UI.DataField', Value: quantity },
 { $Type: 'UI.DataField', Value: estimatedCost },
 { $Type: 'UI.DataField', Value: status },
    { $Type: 'UI.DataField', Label: 'Asset', Value: assetId_ID }
  ]
};

annotate asset_accountingSrv.PurchaseRequisitions with {
  assetId @Common.Label: 'Asset'
};

annotate asset_accountingSrv.PurchaseRequisitions with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate asset_accountingSrv.PurchaseRequisitions with @UI.SelectionFields: [
  assetId_ID
];

annotate asset_accountingSrv.PurchaseOrders with @UI.HeaderInfo: { TypeName: 'Purchase Order', TypeNamePlural: 'Purchase Orders', Title: { Value: poId } };
annotate asset_accountingSrv.PurchaseOrders with {
  ID @UI.Hidden @Common.Text: { $value: poId, ![@UI.TextArrangement]: #TextOnly }
};
annotate asset_accountingSrv.PurchaseOrders with @UI.Identification: [{ Value: poId }];
annotate asset_accountingSrv.PurchaseOrders with {
  prId @Common.ValueList: {
    CollectionPath: 'PurchaseRequisitions',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: prId_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'prId'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'quantity'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'estimatedCost'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'status'
      },
    ],
  }
};
annotate asset_accountingSrv.PurchaseOrders with {
  poId @title: 'PO ID';
  vendorName @title: 'Vendor Name';
  finalCost @title: 'Final Cost';
  approvalStatus @title: 'Approval Status'
};

annotate asset_accountingSrv.PurchaseOrders with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: poId },
 { $Type: 'UI.DataField', Value: vendorName },
 { $Type: 'UI.DataField', Value: finalCost },
 { $Type: 'UI.DataField', Value: approvalStatus },
    { $Type: 'UI.DataField', Label: 'Purchase Requisition', Value: prId_ID }
];

annotate asset_accountingSrv.PurchaseOrders with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: poId },
 { $Type: 'UI.DataField', Value: vendorName },
 { $Type: 'UI.DataField', Value: finalCost },
 { $Type: 'UI.DataField', Value: approvalStatus },
    { $Type: 'UI.DataField', Label: 'Purchase Requisition', Value: prId_ID }
  ]
};

annotate asset_accountingSrv.PurchaseOrders with {
  prId @Common.Text: { $value: prId.prId, ![@UI.TextArrangement]: #TextOnly }
};

annotate asset_accountingSrv.PurchaseOrders with {
  prId @Common.Label: 'Purchase Requisition'
};

annotate asset_accountingSrv.PurchaseOrders with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate asset_accountingSrv.PurchaseOrders with @UI.SelectionFields: [
  prId_ID
];

annotate asset_accountingSrv.GoodsReceipts with @UI.HeaderInfo: { TypeName: 'Goods Receipt', TypeNamePlural: 'Goods Receipts', Title: { Value: grId } };
annotate asset_accountingSrv.GoodsReceipts with {
  ID @UI.Hidden @Common.Text: { $value: grId, ![@UI.TextArrangement]: #TextOnly }
};
annotate asset_accountingSrv.GoodsReceipts with @UI.Identification: [{ Value: grId }];
annotate asset_accountingSrv.GoodsReceipts with {
  poId @Common.ValueList: {
    CollectionPath: 'PurchaseOrders',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: poId_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'poId'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'vendorName'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'finalCost'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'approvalStatus'
      },
    ],
  }
};
annotate asset_accountingSrv.GoodsReceipts with {
  grId @title: 'GR ID';
  receivedDate @title: 'Received Date';
  status @title: 'Status'
};

annotate asset_accountingSrv.GoodsReceipts with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: grId },
 { $Type: 'UI.DataField', Value: receivedDate },
 { $Type: 'UI.DataField', Value: status },
    { $Type: 'UI.DataField', Label: 'Purchase Order', Value: poId_ID }
];

annotate asset_accountingSrv.GoodsReceipts with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: grId },
 { $Type: 'UI.DataField', Value: receivedDate },
 { $Type: 'UI.DataField', Value: status },
    { $Type: 'UI.DataField', Label: 'Purchase Order', Value: poId_ID }
  ]
};

annotate asset_accountingSrv.GoodsReceipts with {
  poId @Common.Text: { $value: poId.poId, ![@UI.TextArrangement]: #TextOnly }
};

annotate asset_accountingSrv.GoodsReceipts with {
  poId @Common.Label: 'Purchase Order'
};

annotate asset_accountingSrv.GoodsReceipts with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate asset_accountingSrv.GoodsReceipts with @UI.SelectionFields: [
  poId_ID
];

annotate asset_accountingSrv.Invoices with @UI.HeaderInfo: { TypeName: 'Invoice', TypeNamePlural: 'Invoices', Title: { Value: invoiceId } };
annotate asset_accountingSrv.Invoices with {
  ID @UI.Hidden @Common.Text: { $value: invoiceId, ![@UI.TextArrangement]: #TextOnly }
};
annotate asset_accountingSrv.Invoices with @UI.Identification: [{ Value: invoiceId }];
annotate asset_accountingSrv.Invoices with {
  poId @Common.ValueList: {
    CollectionPath: 'PurchaseOrders',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: poId_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'poId'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'vendorName'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'finalCost'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'approvalStatus'
      },
    ],
  }
};
annotate asset_accountingSrv.Invoices with {
  invoiceId @title: 'Invoice ID';
  invoiceAmount @title: 'Invoice Amount';
  invoiceDate @title: 'Invoice Date';
  paymentStatus @title: 'Payment Status'
};

annotate asset_accountingSrv.Invoices with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: invoiceId },
 { $Type: 'UI.DataField', Value: invoiceAmount },
 { $Type: 'UI.DataField', Value: invoiceDate },
 { $Type: 'UI.DataField', Value: paymentStatus },
    { $Type: 'UI.DataField', Label: 'Purchase Order', Value: poId_ID }
];

annotate asset_accountingSrv.Invoices with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: invoiceId },
 { $Type: 'UI.DataField', Value: invoiceAmount },
 { $Type: 'UI.DataField', Value: invoiceDate },
 { $Type: 'UI.DataField', Value: paymentStatus },
    { $Type: 'UI.DataField', Label: 'Purchase Order', Value: poId_ID }
  ]
};

annotate asset_accountingSrv.Invoices with {
  poId @Common.Text: { $value: poId.poId, ![@UI.TextArrangement]: #TextOnly }
};

annotate asset_accountingSrv.Invoices with {
  poId @Common.Label: 'Purchase Order'
};

annotate asset_accountingSrv.Invoices with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate asset_accountingSrv.Invoices with @UI.SelectionFields: [
  poId_ID
];

annotate asset_accountingSrv.DepreciationRuns with @UI.HeaderInfo: { TypeName: 'Depreciation Run', TypeNamePlural: 'Depreciation Runs', Title: { Value: depId } };
annotate asset_accountingSrv.DepreciationRuns with {
  ID @UI.Hidden @Common.Text: { $value: depId, ![@UI.TextArrangement]: #TextOnly }
};
annotate asset_accountingSrv.DepreciationRuns with @UI.Identification: [{ Value: depId }];
annotate asset_accountingSrv.DepreciationRuns with {
  assetId @Common.ValueList: {
    CollectionPath: 'Assets',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: assetId_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'assetName'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'assetType'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'assetClass'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'costCenter'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'acquisitionValue'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'capitalizationDate'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'usefulLife'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'accumulatedDepreciation'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'netBookValue'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'status'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedBy'
      },
    ],
  }
};
annotate asset_accountingSrv.DepreciationRuns with {
  depId @title: 'Dep ID';
  fiscalPeriod @title: 'Fiscal Period';
  depreciationAmount @title: 'Depreciation Amount';
  runType @title: 'Run Type'
};

annotate asset_accountingSrv.DepreciationRuns with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: depId },
 { $Type: 'UI.DataField', Value: fiscalPeriod },
 { $Type: 'UI.DataField', Value: depreciationAmount },
 { $Type: 'UI.DataField', Value: runType },
    { $Type: 'UI.DataField', Label: 'Asset', Value: assetId_ID }
];

annotate asset_accountingSrv.DepreciationRuns with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: depId },
 { $Type: 'UI.DataField', Value: fiscalPeriod },
 { $Type: 'UI.DataField', Value: depreciationAmount },
 { $Type: 'UI.DataField', Value: runType },
    { $Type: 'UI.DataField', Label: 'Asset', Value: assetId_ID }
  ]
};

annotate asset_accountingSrv.DepreciationRuns with {
  assetId @Common.Label: 'Asset'
};

annotate asset_accountingSrv.DepreciationRuns with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate asset_accountingSrv.DepreciationRuns with @UI.SelectionFields: [
  assetId_ID
];

annotate asset_accountingSrv.AssetRetirements with @UI.HeaderInfo: { TypeName: 'Asset Retirement', TypeNamePlural: 'Asset Retirements', Title: { Value: retirementId } };
annotate asset_accountingSrv.AssetRetirements with {
  ID @UI.Hidden @Common.Text: { $value: retirementId, ![@UI.TextArrangement]: #TextOnly }
};
annotate asset_accountingSrv.AssetRetirements with @UI.Identification: [{ Value: retirementId }];
annotate asset_accountingSrv.AssetRetirements with {
  assetId @Common.ValueList: {
    CollectionPath: 'Assets',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: assetId_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'assetName'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'assetType'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'assetClass'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'costCenter'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'acquisitionValue'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'capitalizationDate'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'usefulLife'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'accumulatedDepreciation'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'netBookValue'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'status'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedBy'
      },
    ],
  }
};
annotate asset_accountingSrv.AssetRetirements with {
  retirementId @title: 'Retirement ID';
  retirementDate @title: 'Retirement Date';
  retirementValue @title: 'Retirement Value';
  reason @title: 'Reason'
};

annotate asset_accountingSrv.AssetRetirements with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: retirementId },
 { $Type: 'UI.DataField', Value: retirementDate },
 { $Type: 'UI.DataField', Value: retirementValue },
 { $Type: 'UI.DataField', Value: reason },
    { $Type: 'UI.DataField', Label: 'Asset', Value: assetId_ID }
];

annotate asset_accountingSrv.AssetRetirements with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: retirementId },
 { $Type: 'UI.DataField', Value: retirementDate },
 { $Type: 'UI.DataField', Value: retirementValue },
 { $Type: 'UI.DataField', Value: reason },
    { $Type: 'UI.DataField', Label: 'Asset', Value: assetId_ID }
  ]
};

annotate asset_accountingSrv.AssetRetirements with {
  assetId @Common.Label: 'Asset'
};

annotate asset_accountingSrv.AssetRetirements with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate asset_accountingSrv.AssetRetirements with @UI.SelectionFields: [
  assetId_ID
];

annotate asset_accountingSrv.LegacyAssets with @UI.HeaderInfo: { TypeName: 'Legacy Asset', TypeNamePlural: 'Legacy Assets', Title: { Value: legacyAssetId } };
annotate asset_accountingSrv.LegacyAssets with {
  ID @UI.Hidden @Common.Text: { $value: legacyAssetId, ![@UI.TextArrangement]: #TextOnly }
};
annotate asset_accountingSrv.LegacyAssets with @UI.Identification: [{ Value: legacyAssetId }];
annotate asset_accountingSrv.LegacyAssets with {
  legacyAssetId @title: 'Legacy Asset ID';
  assetName @title: 'Asset Name';
  acquisitionValue @title: 'Acquisition Value';
  accumulatedDepreciation @title: 'Accumulated Depreciation';
  migrationDate @title: 'Migration Date'
};

annotate asset_accountingSrv.LegacyAssets with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: legacyAssetId },
 { $Type: 'UI.DataField', Value: assetName },
 { $Type: 'UI.DataField', Value: acquisitionValue },
 { $Type: 'UI.DataField', Value: accumulatedDepreciation },
 { $Type: 'UI.DataField', Value: migrationDate }
];

annotate asset_accountingSrv.LegacyAssets with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: legacyAssetId },
 { $Type: 'UI.DataField', Value: assetName },
 { $Type: 'UI.DataField', Value: acquisitionValue },
 { $Type: 'UI.DataField', Value: accumulatedDepreciation },
 { $Type: 'UI.DataField', Value: migrationDate }
  ]
};

annotate asset_accountingSrv.LegacyAssets with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate asset_accountingSrv.LegacyAssets with @UI.SelectionFields: [
  legacyAssetId
];

