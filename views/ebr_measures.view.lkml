view: ebr_measures {
  sql_table_name: "SCH_SIH"."EBR_MEASURES"
    ;;

  dimension: individual_gets_diabetic_test_strips {
    type: string
    label: "INDIVIDUAL GETS DIABETIC TEST STRIPS"
    sql: ${TABLE}."INDIVIDUAL_GETS_DIABETIC_TEST_STRIPS" ;;
  }

  measure: individual_gets_diabetic_test_strips_patients {
    type: count_distinct
    filters: [individual_gets_diabetic_test_strips: "1"]
    label: "INDIVIDUAL GETS DIABETIC TEST STRIPS - N"
    sql: ${unique_id} ;;
  }

  dimension: individual_gets_diabetic_test_strips_every_quarter {
    type: string
    label: "INDIVIDUAL GETS DIABETIC TEST STRIPS EVERY QUARTER"
    sql: ${TABLE}."INDIVIDUAL_GETS_DIABETIC_TEST_STRIPS_EVERY_QUARTER" ;;
  }

  measure: individual_gets_diabetic_test_strips_every_quarter_patients {
    type: count_distinct
    filters: [individual_gets_diabetic_test_strips_every_quarter: "1"]
    label: "INDIVIDUAL GETS DIABETIC TEST STRIPS EVERY QUARTER - N"
    sql: ${unique_id} ;;
  }

  dimension: unique_id {
    type: string
    label: "Patient ID"
    sql: ${TABLE}."UNIQUE_ID" ;;
  }

  dimension: year {
    type: string
    label: "Year"
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }
}
