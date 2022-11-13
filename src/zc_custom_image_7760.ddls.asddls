@EndUserText.label: 'Customer PE image'
@AccessControl.authorizationCheck: #NOT_REQUIRED

@UI.headerInfo: { imageUrl: 'CustImageURL'}

define root view entity ZC_CUSTOM_IMAGE_7760
  as projection on Z_I_CUSTOM_IMAGE_7760 as customer
{
  key     CustomerID,
          FirstName,
          LastName,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_IMAGE_7760'
  virtual CustImageURL : abap.sstring( 256 ),
          Title,
          Street,
          PostalCode,
          City,
          CountryCode,
          PhoneNumber,
          EMailAddress,
          /* Associations */
          _Country

}
