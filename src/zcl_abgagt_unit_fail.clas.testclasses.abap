CLASS ltcl_fail_test DEFINITION FINAL FOR TESTING
  RISK LEVEL HARMLESS
  DURATION SHORT.

  PRIVATE SECTION.
    DATA mo_cut TYPE REF TO zcl_abgagt_unit_fail.

    METHODS:
      setup,
      test_subtract_fails   FOR TESTING,
      test_divide_by_zero   FOR TESTING.

ENDCLASS.

CLASS ltcl_fail_test IMPLEMENTATION.

  METHOD setup.
    mo_cut = NEW zcl_abgagt_unit_fail( ).
  ENDMETHOD.

  METHOD test_subtract_fails.
    " subtract is deliberately broken (returns a + b instead of a - b)
    " This produces a failedAssertion with a detail line showing expected vs actual
    cl_abap_unit_assert=>assert_equals(
      act = mo_cut->subtract( iv_a = 10 iv_b = 3 )
      exp = 7
      msg = 'subtract should return a minus b' ).
  ENDMETHOD.

  METHOD test_divide_by_zero.
    " divide by zero raises CX_SY_ZERODIVIDE — exercises exception alert kind
    mo_cut->divide( iv_a = 5 iv_b = 0 ).
  ENDMETHOD.

ENDCLASS.
