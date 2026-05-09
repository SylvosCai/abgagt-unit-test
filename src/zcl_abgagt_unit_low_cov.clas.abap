CLASS zcl_abgagt_unit_low_cov DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS square
      IMPORTING iv_val        TYPE i
      RETURNING VALUE(rv_val) TYPE i.

  PRIVATE SECTION.
    METHODS branch_a RETURNING VALUE(rv_val) TYPE i.
    METHODS branch_b RETURNING VALUE(rv_val) TYPE i.
    METHODS branch_c RETURNING VALUE(rv_val) TYPE i.
    METHODS branch_d RETURNING VALUE(rv_val) TYPE i.
    METHODS branch_e RETURNING VALUE(rv_val) TYPE i.

ENDCLASS.

CLASS zcl_abgagt_unit_low_cov IMPLEMENTATION.

  METHOD square.
    rv_val = iv_val * iv_val.
  ENDMETHOD.

  METHOD branch_a.
    rv_val = 1.
  ENDMETHOD.

  METHOD branch_b.
    rv_val = 2.
  ENDMETHOD.

  METHOD branch_c.
    rv_val = 3.
  ENDMETHOD.

  METHOD branch_d.
    rv_val = 4.
  ENDMETHOD.

  METHOD branch_e.
    rv_val = 5.
  ENDMETHOD.

ENDCLASS.
