CLASS zcl_abgagt_unit_fail DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS subtract
      IMPORTING iv_a          TYPE i
                iv_b          TYPE i
      RETURNING VALUE(rv_res) TYPE i.

    METHODS divide
      IMPORTING iv_a          TYPE i
                iv_b          TYPE i
      RETURNING VALUE(rv_res) TYPE i.

ENDCLASS.

CLASS zcl_abgagt_unit_fail IMPLEMENTATION.

  METHOD subtract.
    " Deliberately wrong: returns addition instead of subtraction
    rv_res = iv_a + iv_b.
  ENDMETHOD.

  METHOD divide.
    rv_res = iv_a / iv_b.
  ENDMETHOD.

ENDCLASS.
