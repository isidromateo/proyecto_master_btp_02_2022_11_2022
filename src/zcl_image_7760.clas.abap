CLASS zcl_image_7760 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_sadl_exit_calc_element_read.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_IMAGE_7760 IMPLEMENTATION.


  METHOD if_sadl_exit_calc_element_read~get_calculation_info.

  ENDMETHOD.


  METHOD if_sadl_exit_calc_element_read~calculate.
    DATA customers TYPE STANDARD TABLE OF z_c_sor_header_7760 WITH DEFAULT KEY.

    customers = CORRESPONDING #(  it_original_data ).

    LOOP AT customers ASSIGNING FIELD-SYMBOL(<customer>).
*--     Valor asignado en campo Imageurl =  'http://logaligroup.com/wp-content/uploads/2021/07/Logali-usuarios-03.png'.
      <customer>-CustImageURL =  <customer>-Imageurl.

    ENDLOOP.


    ct_calculated_data = CORRESPONDING #(  customers ).


  ENDMETHOD.
ENDCLASS.
