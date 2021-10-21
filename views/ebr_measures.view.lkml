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

  dimension: individual_had_emergency_room_and_inpatient_visit {
    type: string
    label: "INDIVIDUAL HAD EMERGENCY ROOM & INPATIENT VISIT"
    sql: ${TABLE}."INDIVIDUAL_HAD_EMERGENCY_ROOM_AND_INPATIENT_VISIT" ;;
  }

  measure: individual_had_emergency_room_and_inpatient_visit_patients {
    type: count_distinct
    filters: [individual_had_emergency_room_and_inpatient_visit: "1"]
    label: "INDIVIDUAL HAD EMERGENCY ROOM & INPATIENT VISIT - N"
    sql: ${unique_id} ;;
  }

  dimension: individual_is_in_disease_group_three {
    type: string
    label: "INDIVIDUAL IS IN DISEASE GROUP3"
    sql: ${TABLE}."INDIVIDUAL_IS_IN_DISEASE_GROUP3" ;;
  }

  measure: individual_is_in_disease_group_three_patients {
    type: count_distinct
    filters: [individual_is_in_disease_group_three: "1"]
    label: "INDIVIDUAL IS IN DISEASE GROUP3 - N"
    sql: ${unique_id} ;;
  }

  dimension: individual_is_in_disease_group_four {
    type: string
    label: "INDIVIDUAL IS IN DISEASE GROUP4"
    sql: ${TABLE}."INDIVIDUAL_IS_IN_DISEASE_GROUP4" ;;
  }

  measure: individual_is_in_disease_group_four_patients {
    type: count_distinct
    filters: [individual_is_in_disease_group_four: "1"]
    label: "INDIVIDUAL IS IN DISEASE GROUP4 - N"
    sql: ${unique_id} ;;
  }

  dimension: individual_is_in_disease_group_five {
    type: string
    label: "INDIVIDUAL IS IN DISEASE GROUP5"
    sql: ${TABLE}."INDIVIDUAL_IS_IN_DISEASE_GROUP5" ;;
  }

  measure: individual_is_in_disease_group_five_patients {
    type: count_distinct
    filters: [individual_is_in_disease_group_five: "1"]
    label: "INDIVIDUAL IS IN DISEASE GROUP5 - N"
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
