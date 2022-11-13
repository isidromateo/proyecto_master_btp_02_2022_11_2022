@AbapCatalog.sqlViewName: 'Z_V_SHEADER_7760'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Interface - Header (7760)'

define root view Z_I_SOR_HEADER_7760
  as select from zsor_header_7760 as header_7760
  composition [0..*] of Z_I_SOR_ITEMS_7760 as _items_7760
{
  key header_7760.id           as Id,
      header_7760.email        as Email,
      header_7760.firstname    as Firstname,
      header_7760.lastname     as Lastname,
      header_7760.country      as Country,
      @Semantics.systemDateTime.createdAt: true
      header_7760.createon     as Createon,
      header_7760.deliverydate as Deliverydate,
      header_7760.orderstatus  as Orderstatus,
      header_7760.imageurl     as Imageurl,
      _items_7760

}
