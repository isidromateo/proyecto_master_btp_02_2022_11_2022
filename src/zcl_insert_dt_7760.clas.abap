CLASS zcl_insert_dt_7760 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.



CLASS ZCL_INSERT_DT_7760 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    TYPES: tt_header TYPE STANDARD TABLE OF zsor_header_7760 WITH DEFAULT KEY,
           tt_items  TYPE STANDARD TABLE OF zsor_items_7760 WITH DEFAULT KEY.

    DATA: lt_header TYPE tt_header,
          lt_items  TYPE tt_items.

*-- Delete tables
    DELETE FROM: zsor_header_7760, zsor_items_7760.

**-- Insert header data
    CLEAR lt_header[].
    lt_header = VALUE tt_header(
                                             (
                                               id = cl_system_uuid=>create_uuid_X16_static(  )
                                               email = 'fnicola@itwagen.com'
                                               firstname = 'Francesca'
                                               lastname = 'Nicola'
                                               country  = 'Italy'
                                               createon = '20211015'
                                               deliverydate = '20211129'
                                               orderstatus  = 'D'
                                               imageurl = 'http://logaligroup.com/wp-content/uploads/2021/07/Logali-usuarios-03.png'

                                              ) (
                                               id = cl_system_uuid=>create_uuid_X16_static( )
                                               email = 'rmartin@frwagen.com'
                                               firstname = 'Richard'
                                               lastname = 'Martin'
                                               country  = 'France'
                                               createon = '20220720'
                                               deliverydate = '20221215'
                                               orderstatus  = 'M'
                                               imageurl = 'http://logaligroup.com/wp-content/uploads/2021/07/Logali-usuarios-03.png'

                                              ) (
                                               id = cl_system_uuid=>create_uuid_X16_static( )
                                               email = 'pcosta@ptwagen.com'
                                               firstname = 'Paulo'
                                               lastname = 'Costa'
                                               country  = 'Portugal'
                                               createon = '20210528'
                                               deliverydate = '20211030'
                                               orderstatus  = 'D'
                                               imageurl = 'http://logaligroup.com/wp-content/uploads/2021/07/Logali-usuarios-03.png'

                                               ) (
                                               id = cl_system_uuid=>create_uuid_X16_static( )
                                               email = 'ojames@gbwagen.com'
                                               firstname = 'Oliver'
                                               lastname = 'James'
                                               country  = 'United Kingdom'
                                               createon = '20220724'
                                               deliverydate = '20221105'
                                               orderstatus  = 'W'
                                               imageurl = 'http://logaligroup.com/wp-content/uploads/2021/07/Logali-usuarios-03.png'

                                               ) (
                                               id = cl_system_uuid=>create_uuid_X16_static( )
                                               email = 'kolsen@dkwagen.com'
                                               firstname = 'Karen'
                                               lastname = 'Olsen'
                                               country  = 'Denmark'
                                               createon = '20210109'
                                               deliverydate = '20211219'
                                               orderstatus  = 'D'
                                               imageurl = 'http://logaligroup.com/wp-content/uploads/2021/07/Logali-usuarios-03.png'


                                              ) (
                                               id = cl_system_uuid=>create_uuid_X16_static( )
                                               email = 'smeijer@nlwagen.com'
                                               firstname = 'Sander'
                                               lastname = 'Meijer'
                                               country  = 'Netherlands'
                                               createon = '20220924'
                                               deliverydate = '20221215'
                                               orderstatus  = 'M'
                                               imageurl = 'http://logaligroup.com/wp-content/uploads/2021/07/Logali-usuarios-03.png'

                                               ) (
                                               id = cl_system_uuid=>create_uuid_X16_static( )
                                               email = 'aperez@eswagen.com'
                                               firstname = 'Antonio'
                                               lastname = 'Pérez'
                                               country  = 'Spain'
                                               createon = '20220424'
                                               deliverydate = '20221101'
                                               orderstatus  = 'W'
                                               imageurl = 'http://logaligroup.com/wp-content/uploads/2021/07/Logali-usuarios-03.png'

                                              ) (
                                               id = cl_system_uuid=>create_uuid_X16_static( )
                                               email = 'nschmid@chwagen.com'
                                               firstname = 'Nino'
                                               lastname = 'Schmid'
                                               country  = 'Switzerland'
                                               createon = '20220313'
                                               deliverydate = '20221218'
                                               orderstatus  = 'M'
                                               imageurl = 'http://logaligroup.com/wp-content/uploads/2021/07/Logali-usuarios-03.png'

                                              )
                                            ).

    INSERT zsor_header_7760 FROM TABLE @lt_header.


*-- Insert items data
    CLEAR lt_items[].
    lt_items = VALUE tt_items(
                                                 (
                                                   id = lt_header[ 1 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'New Polo'
                                                   description = 'New Polo G4 1.5'
                                                   releasedate = '20210101'
                                                   discontinueddate = '20230630'
                                                   price = '19030'
                                                   Height = '1438'
                                                   width = '1751'
                                                   depth = '4053'
                                                   quantity = '4'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                  ) (
                                                   id = lt_header[ 1 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'Golf 8'
                                                   description = 'Golf 8 G7 1.8T'
                                                   releasedate = '20220101'
                                                   discontinueddate = '20231129'
                                                   price = '25610'
                                                   Height = '1456'
                                                   width = '1789'
                                                   depth = '4284'
                                                   quantity = '3'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'
                                                  ) (

                                                   id = lt_header[ 1 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'ID.3'
                                                   description = 'ID.3 G1 1.2'
                                                   releasedate = '20210101'
                                                   discontinueddate = '20220822'
                                                   price = '36999'
                                                   Height = '1568'
                                                   width = '1809'
                                                   depth = '4261'
                                                   quantity = '5'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                  ) (
                                                   id = lt_header[ 2 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'Golf Estate 8'
                                                   description = 'Golf Estate 8 G7 2.2'
                                                   releasedate = '20220101'
                                                   discontinueddate = '20230905'
                                                   price = '26970'
                                                   Height = '1498'
                                                   width = '1789'
                                                   depth = '4633'
                                                   quantity = '2'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                  ) (
                                                   id = lt_header[ 2 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'ID.4'
                                                   description = 'ID.4 G1 1.6T'
                                                   releasedate = '20220101'
                                                   discontinueddate = '20230719'
                                                   price = '38710'
                                                   Height = '1640'
                                                   width = '1852'
                                                   depth = '4584'
                                                   quantity = '1'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                 ) (
                                                   id = lt_header[ 3 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'ID.5'
                                                   description ='ID.5 G1 1.4'
                                                   releasedate = '20210101'
                                                   discontinueddate = '20220831'
                                                   price = '50625'
                                                   Height = '1640'
                                                   width = '1852'
                                                   depth = '4584'
                                                   quantity = '7'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                  ) (
                                                   id = lt_header[ 4 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'T-Cross'
                                                   description = 'T-Cross G3 1.9'
                                                   releasedate = '20220101'
                                                   discontinueddate = '20230714'
                                                   price = '22370'
                                                   Height = '1584'
                                                   width = '1760'
                                                   depth = '4110'
                                                   quantity = '6'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                  ) (
                                                   id = lt_header[ 4 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'ID.Buzz'
                                                   description = 'ID.Buzz G2 1.6'
                                                   releasedate = '20220101'
                                                   discontinueddate = '20230917'
                                                   price = '57115'
                                                   Height = '1937'
                                                   width = '1985'
                                                   depth = '4712'
                                                   quantity = '2'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                  ) (
                                                   id = lt_header[ 4 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'Taigo'
                                                   description = 'Taigo G3 2.0T'
                                                   releasedate = '20220101'
                                                   discontinueddate = '20231127'
                                                   price = '23385'
                                                   Height = '1494'
                                                   width = '1757'
                                                   depth = '4266'
                                                   quantity = '3'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                  ) (
                                                   id = lt_header[ 5 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'New T-Roc'
                                                   description = 'New T-Roc G2 2.2'
                                                   releasedate = '20210101'
                                                   discontinueddate = '20221220'
                                                   price = '26080'
                                                   Height = '1515'
                                                   width = '1757'
                                                   depth = '4271'
                                                   quantity = '1'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                  ) (
                                                   id = lt_header[ 5 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'Tiguan'
                                                   description = 'Tiguan G4 2.2'
                                                   releasedate = '20210101'
                                                   discontinueddate = '20221230'
                                                   price = '29910'
                                                   Height = '1675'
                                                   width = '1839'
                                                   depth = '4509'
                                                   quantity = '9'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                  ) (
                                                   id = lt_header[ 6 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'New T-Roc Cabriolet'
                                                   description = 'New T-Roc Cabriolet G3 1.8'
                                                   releasedate = '20220101'
                                                   discontinueddate = '20240101'
                                                   price = '31820'
                                                   Height = '1520'
                                                   width = '1819'
                                                   depth = '4271'
                                                   quantity = '5'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                  ) (
                                                   id = lt_header[ 7 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'Touareg'
                                                   description = 'Touareg G4 2.0T'
                                                   releasedate = '20220101'
                                                   discontinueddate = '20230925'
                                                   price = '55885'
                                                   Height = '1702'
                                                   width = '1984'
                                                   depth = '4878'
                                                   quantity = '2'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                  ) (
                                                   id = lt_header[ 7 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'Tiguan Allspace'
                                                   description = 'Tiguan Allspace G3 1.6'
                                                   releasedate = '20220101'
                                                   discontinueddate = '20250101'
                                                   price = '34165'
                                                   Height = '1674'
                                                   width = '1839'
                                                   depth = '4728'
                                                   quantity = '7'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                  ) (
                                                   id = lt_header[ 7 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'Passat Estate'
                                                   description = 'Passat Estate G5 2.0'
                                                   releasedate = '20220101'
                                                   discontinueddate = '20240101'
                                                   price = '32530'
                                                   Height = '1516'
                                                   width = '1832'
                                                   depth = '4773'
                                                   quantity = '4'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                  ) (
                                                   id = lt_header[ 8 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'Arteon'
                                                   description = 'Arteon G4 1.8T'
                                                   releasedate = '20220101'
                                                   discontinueddate = '20250101'
                                                   price = '38660'
                                                   Height = '1462'
                                                   width = '1871'
                                                   depth = '4865'
                                                   quantity = '3'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                  ) (
                                                   id = lt_header[ 8 ]-id
                                                   ebelp = cl_system_uuid=>create_uuid_x16_static( )
                                                   name = 'New Multivan'
                                                   description = 'New Multivan G5 2.0'
                                                   releasedate = '20220101'
                                                   discontinueddate = '20240101'
                                                   price = '37550'
                                                   Height = '1907'
                                                   width = '1941'
                                                   depth = '4973'
                                                   quantity = '5'
                                                   unitofmeasure = 'MM'
                                                   imageurl = 'https://github.com/Logali-Group/cap-products/blob/16_Despliegue_Cloud/cap-products/app/product/webapp/assets/bread.jpg'

                                                  )

                                                   ).

    INSERT zsor_items_7760 FROM TABLE @lt_items.


  ENDMETHOD.
ENDCLASS.
