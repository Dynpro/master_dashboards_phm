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

  dimension: individual_is_in_disease_group {
    type: string
    hidden: yes
    sql: ${TABLE}."INDIVIDUAL_IS_IN_DISEASE_GROUP" ;;
  }

  dimension: individual_is_in_disease_group_three {
    type: string
    label: "INDIVIDUAL IS IN DISEASE GROUP-3"
    sql: CASE WHEN ${individual_is_in_disease_group} = 'GROUP-3' THEN '1'
      ELSE '0'
      END ;;
  }

  measure: individual_is_in_disease_group_three_patients {
    type: count_distinct
    filters: [individual_is_in_disease_group_three: "1"]
    label: "INDIVIDUAL IS IN DISEASE GROUP3 - N"
    sql: ${unique_id} ;;
  }

  dimension: individual_is_in_disease_group_four {
    type: string
    label: "INDIVIDUAL IS IN DISEASE GROUP-4"
    sql: CASE WHEN ${individual_is_in_disease_group} = 'GROUP-4' THEN '1'
      ELSE '0'
      END ;;
  }

  measure: individual_is_in_disease_group_four_patients {
    type: count_distinct
    filters: [individual_is_in_disease_group_four: "1"]
    label: "INDIVIDUAL IS IN DISEASE GROUP4 - N"
    sql: ${unique_id} ;;
  }

  dimension: individual_is_in_disease_group_five {
    type: string
    label: "INDIVIDUAL IS IN DISEASE GROUP-5"
    sql: CASE WHEN ${individual_is_in_disease_group} = 'GROUP-5' THEN '1'
      ELSE '0'
      END ;;
  }

  measure: individual_is_in_disease_group_five_patients {
    type: count_distinct
    filters: [individual_is_in_disease_group_five: "1"]
    label: "INDIVIDUAL IS IN DISEASE GROUP5 - N"
    sql: ${unique_id} ;;
  }

  dimension: individual_is_in_disease_group_six {
    type: string
    label: "INDIVIDUAL IS IN DISEASE GROUP-6"
    sql: CASE WHEN ${individual_is_in_disease_group} = 'GROUP-6' THEN '1'
      ELSE '0'
      END ;;
  }

  measure: individual_is_in_disease_group_six_patients {
    type: count_distinct
    filters: [individual_is_in_disease_group_six: "1"]
    label: "INDIVIDUAL IS IN DISEASE GROUP6 - N"
    sql: ${unique_id} ;;
  }

  dimension: individual_is_in_disease_group_seven {
    type: string
    label: "INDIVIDUAL IS IN DISEASE GROUP-7"
    sql: CASE WHEN ${individual_is_in_disease_group} = 'GROUP-7' THEN '1'
      ELSE '0'
      END ;;
  }

  measure: individual_is_in_disease_group_seven_patients {
    type: count_distinct
    filters: [individual_is_in_disease_group_seven: "1"]
    label: "INDIVIDUAL IS IN DISEASE GROUP7 - N"
    sql: ${unique_id} ;;
  }

  dimension: individual_taking_drug_with_cost_greater_than_400 {
    type: string
    label: "INDIVIDUAL TAKING DRUG WITH COST GREATER THAN 400"
    sql: ${TABLE}."INDIVIDUAL_TAKING_DRUG_WITH_COST_GREATER_THAN_400" ;;
  }

  measure: individual_taking_drug_with_cost_greater_than_400_patients {
    type: count_distinct
    filters: [individual_taking_drug_with_cost_greater_than_400: "1"]
    label: "INDIVIDUAL TAKING DRUG WITH COST GREATER THAN 400 - N"
    sql: ${unique_id} ;;
  }

  dimension: individual_taking_black_label_drug {
    type: string
    label: "INDIVIDUAL TAKING BLACK LABEL DRUG"
    sql: ${TABLE}."INDIVIDUAL_TAKING_BLACK_LABEL_DRUG" ;;
  }

  measure: individual_taking_black_label_drug_patients {
    type: count_distinct
    filters: [individual_taking_black_label_drug: "1"]
    label: "INDIVIDUAL TAKING BLACK LABEL DRUG - N"
    sql: ${unique_id} ;;
  }

  dimension: individual_taking_specialty_drug {
    type: string
    label: "INDIVIDUAL TAKING SPECIALTY DRUGS DRUG"
    sql: ${TABLE}."INDIVIDUAL_TAKING_SPECIALTY_DRUGS_DRUG" ;;
  }

  measure: individual_taking_specialty_drug_patients {
    type: count_distinct
    filters: [individual_taking_specialty_drug: "1"]
    label: "INDIVIDUAL TAKING SPECIALTY DRUGS DRUG - N"
    sql: ${unique_id} ;;
  }

  dimension: individual_had_primary_care_physician_visit {
    type: string
    label: "INDIVIDUAL HAD PRIMARY CARE PHYSICIAN VISIT"
    sql: ${TABLE}."INDIVIDUAL_HAD_PRIMARY_CARE_PHYSICIAN_VISIT" ;;
  }

  measure: individual_had_primary_care_physician_visit_patients {
    type: count_distinct
    filters: [individual_had_primary_care_physician_visit: "1"]
    label: "INDIVIDUAL HAD PRIMARY CARE PHYSICIAN VISIT - N"
    sql: ${unique_id} ;;
  }

  dimension: individual_female_had_breast_cancer_screening {
    type: string
    label: "INDIVIDUAL FEMALE HAD BREAST CANCER SCREENING"
    sql: ${TABLE}."INDIVIDUAL_FEMALE_HAD_BREAST_CANCER_SCREENING" ;;
  }

  measure: _patients {
    type: count_distinct
    filters: [individual_female_had_breast_cancer_screening: "1"]
    label: "INDIVIDUAL FEMALE HAD BREAST CANCER SCREENING - N"
    sql: ${unique_id} ;;
  }

  dimension: individual_female_had_colon_cancer_screening {
    type: string
    label: "INDIVIDUAL FEMALE HAD COLON CANCER SCREENING"
    sql: ${TABLE}."INDIVIDUAL_FEMALE_HAD_COLON_CANCER_SCREENING" ;;
  }

  measure: individual_female_had_colon_cancer_screening_patients {
    type: count_distinct
    filters: [individual_female_had_colon_cancer_screening: "1"]
    label: "INDIVIDUAL FEMALE HAD COLON CANCER SCREENING - N"
    sql: ${unique_id} ;;
  }

  dimension: individual_female_had_cervical_cancer_screening {
    type: string
    label: "INDIVIDUAL FEMALE HAD CERVICAL CANCER SCREENING"
    sql: ${TABLE}."INDIVIDUAL_FEMALE_HAD_CERVICAL_CANCER_SCREENING" ;;
  }

  measure: individual_female_had_cervical_cancer_screening_patients {
    type: count_distinct
    filters: [individual_female_had_cervical_cancer_screening: "1"]
    label: "INDIVIDUAL FEMALE HAD CERVICAL CANCER SCREENING - N"
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
