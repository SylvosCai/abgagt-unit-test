CLASS ltcl_low_cov DEFINITION FINAL FOR TESTING
  RISK LEVEL HARMLESS
  DURATION SHORT.

  PRIVATE SECTION.
    DATA mo_cut TYPE REF TO zcl_abgagt_unit_low_cov.

    METHODS:
      setup,
      test_square FOR TESTING.

ENDCLASS.

CLASS ltcl_low_cov IMPLEMENTATION.

  METHOD setup.
    mo_cut = NEW zcl_abgagt_unit_low_cov( ).
  ENDMETHOD.

  METHOD test_square.
    cl_abap_unit_assert=>assert_equals(
      act = mo_cut->square( 5 )
      exp = 25 ).
  ENDMETHOD.

ENDCLASS.
