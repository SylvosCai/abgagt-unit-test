CLASS ltcl_unit_test DEFINITION FINAL FOR TESTING
  RISK LEVEL HARMLESS
  DURATION SHORT.

  PRIVATE SECTION.
    DATA mo_cut TYPE REF TO zcl_abgagt_unit_test.

    METHODS:
      setup,
      test_add              FOR TESTING,
      test_add_negative     FOR TESTING,
      test_is_even          FOR TESTING,
      test_is_odd           FOR TESTING,
      test_greet            FOR TESTING,
      test_greet_empty_name FOR TESTING.

ENDCLASS.

CLASS ltcl_unit_test IMPLEMENTATION.

  METHOD setup.
    mo_cut = NEW zcl_abgagt_unit_test( ).
  ENDMETHOD.

  METHOD test_add.
    cl_abap_unit_assert=>assert_equals(
      act = mo_cut->add( iv_a = 3 iv_b = 4 )
      exp = 7 ).
  ENDMETHOD.

  METHOD test_add_negative.
    cl_abap_unit_assert=>assert_equals(
      act = mo_cut->add( iv_a = -5 iv_b = 3 )
      exp = -2 ).
  ENDMETHOD.

  METHOD test_is_even.
    cl_abap_unit_assert=>assert_equals(
      act = mo_cut->is_even( 4 )
      exp = abap_true ).
  ENDMETHOD.

  METHOD test_is_odd.
    cl_abap_unit_assert=>assert_equals(
      act = mo_cut->is_even( 3 )
      exp = abap_false ).
  ENDMETHOD.

  METHOD test_greet.
    cl_abap_unit_assert=>assert_equals(
      act = mo_cut->greet( 'Alice' )
      exp = 'Hello, Alice!' ).
  ENDMETHOD.

  METHOD test_greet_empty_name.
    cl_abap_unit_assert=>assert_equals(
      act = mo_cut->greet( '' )
      exp = 'Hello, World!' ).
  ENDMETHOD.

ENDCLASS.
