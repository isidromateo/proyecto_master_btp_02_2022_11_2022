CLASS lhc_so_header DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR so_header RESULT result.

    METHODS validateemail FOR VALIDATE ON SAVE
      IMPORTING keys FOR so_header~validateemail.

ENDCLASS.

CLASS lhc_so_header IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD validateEmail.

*-- Lectura entidad SO_HEADER
    READ ENTITIES OF z_i_sor_header_7760 IN LOCAL MODE
              ENTITY so_header
              FIELDS (
                       id
                       email
                     )
                WITH CORRESPONDING #( keys )
              RESULT DATA(lt_so_header_7760).


    LOOP AT lt_so_header_7760 ASSIGNING FIELD-SYMBOL(<ls_so_header_7760>).

*-- Se valida que el campo Email esté informado
      IF <ls_so_header_7760>-email IS INITIAL.

*-- Se agrega el registro 'Failed'
        APPEND VALUE #( id = <ls_so_header_7760>-id ) TO failed-so_header.

*-- Se agrega el mensaje de error
        APPEND VALUE #(
                        id = <ls_so_header_7760>-id
                        %msg    = new_message( id       = 'ZMC_BTP_7760'
                                               number   = '001'
                                               severity = if_abap_behv_message=>severity-error )
                        %element-email = if_abap_behv=>mk-on
                      )
                        TO reported-so_header.

      ELSEIF <ls_so_header_7760>-email NS '@' OR
             <ls_so_header_7760>-email NS '.'.

*-- Se agrega el registro 'Failed'
                APPEND VALUE #( id = <ls_so_header_7760>-id ) TO failed-so_header.

*-- Se agrega el mensaje de error
        APPEND VALUE #(
                        id = <ls_so_header_7760>-id
                        %msg    = new_message( id       = 'ZMC_BTP_7760'
                                               number   = '002'
                                               severity = if_abap_behv_message=>severity-error )
                        %element-email = if_abap_behv=>mk-on
                      )
                        TO reported-so_header.


      ENDIF.

    ENDLOOP.
  ENDMETHOD.

ENDCLASS.

*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
