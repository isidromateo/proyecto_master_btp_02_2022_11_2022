@EndUserText.label: 'Consumption - Header 7760'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@UI.headerInfo: { imageUrl: 'CustImageURL'}
define root view entity Z_C_SOR_HEADER_7760
  as projection on Z_I_SOR_HEADER_7760 as header_7760
{
  key     Id           as Id,
          Email        as Email,
          Firstname    as Firstname,
          Lastname     as Lastname,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_IMAGE_7760'
  virtual CustImageUrl : abap.string( 256 ),
          Country      as Country,
          //     Createon     as Createon,
          Deliverydate as Deliveydate,
          Orderstatus  as Orderstatus,
          Imageurl     as Imageurl,
          /* Associations */
          _items_7760 : redirected to composition child Z_C_SOR_ITEMS_7760


}
