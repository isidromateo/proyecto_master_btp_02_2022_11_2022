@EndUserText.label: 'Consumption - Items 7760'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity Z_C_SOR_ITEMS_7760
  as projection on Z_I_SOR_ITEMS_7760
{
  key Id               as Id,
  key Ebelp            as Ebelp,
      Name             as Name,
      Description      as Description,
      Releasedate      as Releasedate,
      Discontinueddate as Discontinueddate,
      Price            as Price,
      Height           as Height,
      Width            as Width,
      Depth            as Depth,
      Quantity         as Quantity,
      Unitofmeasure    as Unitofmeasure,
      Imageurl         as Imageurl,
      /* Associations */
      _header_7760 : redirected to parent Z_C_SOR_HEADER_7760


}
