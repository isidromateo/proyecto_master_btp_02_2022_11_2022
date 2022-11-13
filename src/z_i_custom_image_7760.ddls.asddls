@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Logali Image (7760)'
define root view entity Z_I_CUSTOM_IMAGE_7760
  as select from /DMO/I_Customer as customer
{
  key customer.CustomerID,
      customer.FirstName,
      customer.LastName,
      customer.Title,
      customer.Street,
      customer.PostalCode,
      customer.City,
      customer.CountryCode,
      customer.PhoneNumber,
      customer.EMailAddress,
      customer._Country
}
