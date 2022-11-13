@AbapCatalog.sqlViewName: 'Z_V_SITMES_7760'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Interface - Items (7760)'
//@UI.headerInfo : { imageUrl: 'Imageurl' }
define view Z_I_SOR_ITEMS_7760
  as select from zsor_items_7760
  association to parent Z_I_SOR_HEADER_7760 as _header_7760 on $projection.Id = _header_7760.Id

{
  key id               as Id,
  key ebelp            as Ebelp,
      name             as Name,
      description      as Description,
      releasedate      as Releasedate,
      discontinueddate as Discontinueddate,
      price            as Price,
      @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
      height           as Height,
      @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
      width            as Width,
      @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
      depth            as Depth,
      quantity         as Quantity,
      @Semantics.unitOfMeasure: true
      unitofmeasure    as Unitofmeasure,
      imageurl         as Imageurl,
      _header_7760
      
}
