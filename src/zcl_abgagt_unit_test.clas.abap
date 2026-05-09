CLASS zcl_abgagt_unit_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS add
      IMPORTING iv_a          TYPE i
                iv_b          TYPE i
      RETURNING VALUE(rv_sum) TYPE i.

    METHODS is_even
      IMPORTING iv_val        TYPE i
      RETURNING VALUE(rv_yes) TYPE abap_bool.

    METHODS greet
      IMPORTING iv_name       TYPE string
      RETURNING VALUE(rv_msg) TYPE string.

  PRIVATE SECTION.
    METHODS never_called
      RETURNING VALUE(rv_val) TYPE i.

ENDCLASS.

CLASS zcl_abgagt_unit_test IMPLEMENTATION.

  METHOD add.
    rv_sum = iv_a + iv_b.
  ENDMETHOD.

  METHOD is_even.
    rv_yes = xsdbool( iv_val MOD 2 = 0 ).
  ENDMETHOD.

  METHOD greet.
    IF iv_name IS INITIAL.
      rv_msg = 'Hello, World!'.
    ELSE.
      rv_msg = |Hello, { iv_name }!|.
    ENDIF.
  ENDMETHOD.

  METHOD never_called.
    " Intentionally uncovered — keeps coverage below 100%
    rv_val = 42.
  ENDMETHOD.

ENDCLASS.
