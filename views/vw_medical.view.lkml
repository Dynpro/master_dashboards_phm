view: vw_medical {
  sql_table_name: "SCH_SIH"."VW_MEDICAL"
    ;;

  dimension: 2012_chronic {
    type: string
    sql: ${TABLE}."2012_CHRONIC" ;;
  }

  dimension: address_city {
    type: string
    sql: ${TABLE}."ADDRESS_CITY" ;;
  }

  dimension: address_state {
    type: string
    sql: ${TABLE}."ADDRESS_STATE" ;;
  }

  dimension: address_zip_code {
    type: string
    sql: ${TABLE}."ADDRESS_ZIP_CODE" ;;
  }

  dimension_group: admit {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."ADMIT_DATE" ;;
  }

  dimension: age_group_1 {
    type: string
    sql: ${TABLE}."AGE_GROUP_1" ;;
  }

  dimension: bill_provider_name {
    type: string
    sql: ${TABLE}."BILL_PROVIDER_NAME" ;;
  }

  dimension: bill_provider_state {
    type: string
    sql: ${TABLE}."BILL_PROVIDER_STATE" ;;
  }

  dimension: bill_provider_tin {
    type: string
    sql: ${TABLE}."BILL_PROVIDER_TIN" ;;
  }

  dimension: bill_provider_type {
    type: string
    sql: ${TABLE}."BILL_PROVIDER_TYPE" ;;
  }

  dimension: bill_provider_zip {
    type: string
    sql: ${TABLE}."BILL_PROVIDER_ZIP" ;;
  }

  dimension: claim_number {
    type: string
    sql: ${TABLE}."CLAIM_NUMBER" ;;
  }

  dimension: claim_status {
    type: string
    sql: ${TABLE}."CLAIM_STATUS" ;;
  }

  dimension: claim_type {
    type: string
    sql: ${TABLE}."CLAIM_TYPE" ;;
  }

  dimension: class_code {
    type: string
    sql: ${TABLE}."CLASS_CODE" ;;
  }

  dimension: co_payment_amt {
    type: number
    sql: ${TABLE}."CO_PAYMENT_AMT" ;;
  }

  dimension: coverage_type {
    type: string
    sql: ${TABLE}."COVERAGE_TYPE" ;;
  }

  dimension_group: date_claim_received {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE_CLAIM_RECEIVED" ;;
  }

  dimension: dependent_relationship_code {
    type: string
    sql: ${TABLE}."DEPENDENT_RELATIONSHIP_CODE" ;;
  }

  dimension: diagnosis_code_2 {
    type: string
    sql: ${TABLE}."DIAGNOSIS_CODE_2" ;;
  }

  dimension: diagnosis_code_3 {
    type: string
    sql: ${TABLE}."DIAGNOSIS_CODE_3" ;;
  }

  dimension: diagnosis_code_4 {
    type: string
    sql: ${TABLE}."DIAGNOSIS_CODE_4" ;;
  }

  dimension_group: diagnosis {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DIAGNOSIS_DATE" ;;
  }

  dimension_group: discharge {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DISCHARGE_DATE" ;;
  }

  dimension: discount_amt {
    type: number
    sql: ${TABLE}."DISCOUNT_AMT" ;;
  }

  dimension: disease_group {
    type: string
    sql: ${TABLE}."DISEASE_GROUP" ;;
  }

  dimension: employee_cobra {
    type: string
    sql: ${TABLE}."EMPLOYEE_COBRA" ;;
  }

  dimension: employee_status {
    type: string
    sql: ${TABLE}."EMPLOYEE_STATUS" ;;
  }

  dimension: employer_group_name {
    type: string
    sql: ${TABLE}."EMPLOYER_GROUP_NAME" ;;
  }

  dimension: employer_name {
    type: string
    sql: ${TABLE}."EMPLOYER_NAME" ;;
  }

  dimension: hospitalized_or_not {
    type: string
    sql: ${TABLE}."HOSPITALIZED_OR_NOT" ;;
  }

  dimension: icd_acute {
    type: string
    sql: ${TABLE}."ICD_ACUTE" ;;
  }

  dimension: icd_avoidable_er {
    type: string
    sql: ${TABLE}."ICD_AVOIDABLE_ER" ;;
  }

  dimension: icd_chronic_cat {
    type: string
    sql: ${TABLE}."ICD_CHRONIC_CAT" ;;
  }

  dimension: icd_chronic_cat_new {
    type: string
    sql: ${TABLE}."ICD_CHRONIC_CAT_NEW" ;;
  }

  dimension: icd_description {
    type: string
    sql: ${TABLE}."ICD_DESCRIPTION" ;;
  }

  dimension: icd_digestive_disease {
    type: string
    sql: ${TABLE}."ICD_DIGESTIVE_DISEASE" ;;
  }

  dimension: icd_disease_category {
    type: string
    sql: ${TABLE}."ICD_DISEASE_CATEGORY" ;;
  }

  dimension: icd_indicator {
    type: number
    sql: ${TABLE}."ICD_INDICATOR" ;;
  }

  dimension: icd_ls_modify {
    type: string
    sql: ${TABLE}."ICD_LS_MODIFY" ;;
  }

  dimension: icd_lt_all_absences_midrange {
    type: string
    sql: ${TABLE}."ICD_LT_ALL_ABSENCES_MIDRANGE" ;;
  }

  dimension: icd_major_disease {
    type: string
    sql: ${TABLE}."ICD_MAJOR_DISEASE" ;;
  }

  dimension: icd_preventative {
    type: string
    sql: ${TABLE}."ICD_PREVENTATIVE" ;;
  }

  dimension: icd_rh_chronic {
    type: string
    sql: ${TABLE}."ICD_RH_CHRONIC" ;;
  }

  dimension: in_or_out_patient_type {
    type: string
    sql: ${TABLE}."IN_OR_OUT_PATIENT_TYPE" ;;
  }

  dimension: ineligable_amt {
    type: number
    sql: ${TABLE}."INELIGABLE_AMT" ;;
  }

  dimension: insured_out_of_pocket_amt {
    type: number
    sql: ${TABLE}."INSURED_OUT_OF_POCKET_AMT" ;;
  }

  dimension: job_designation {
    type: string
    sql: ${TABLE}."JOB_DESIGNATION" ;;
  }

  dimension: job_type {
    type: string
    sql: ${TABLE}."JOB_TYPE" ;;
  }

  dimension_group: paid {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."PAID_DATE" ;;
  }

  dimension: patient_age {
    type: number
    sql: ${TABLE}."PATIENT_AGE" ;;
  }

  dimension: patient_gender {
    type: string
    sql: ${TABLE}."PATIENT_GENDER" ;;
  }

  dimension: payee_provider_id {
    type: string
    sql: ${TABLE}."PAYEE_PROVIDER_ID" ;;
  }

  dimension: place_of_service {
    type: string
    sql: ${TABLE}."PLACE_OF_SERVICE" ;;
  }

  dimension: place_of_service_description {
    type: string
    sql: ${TABLE}."PLACE_OF_SERVICE_DESCRIPTION" ;;
  }

  dimension: place_of_service_name {
    type: string
    sql: ${TABLE}."PLACE_OF_SERVICE_NAME" ;;
  }

  dimension: primary_diagnosis_code {
    type: string
    sql: ${TABLE}."PRIMARY_DIAGNOSIS_CODE" ;;
  }

  dimension: primary_procedure_code {
    type: string
    sql: ${TABLE}."PRIMARY_PROCEDURE_CODE" ;;
  }

  dimension: procedure_code_2 {
    type: string
    sql: ${TABLE}."PROCEDURE_CODE_2" ;;
  }

  dimension: procedure_code_3 {
    type: string
    sql: ${TABLE}."PROCEDURE_CODE_3" ;;
  }

  dimension: procedure_code_4 {
    type: string
    sql: ${TABLE}."PROCEDURE_CODE_4" ;;
  }

  dimension: procedure_code_type {
    type: string
    sql: ${TABLE}."PROCEDURE_CODE_TYPE" ;;
  }

  dimension: procedure_consumer_description {
    type: string
    sql: ${TABLE}."PROCEDURE_CONSUMER_DESCRIPTION" ;;
  }

  dimension: procedure_description {
    type: string
    sql: ${TABLE}."PROCEDURE_DESCRIPTION" ;;
  }

  dimension: reconciled_diagnosis_code_icd10 {
    type: string
    sql: ${TABLE}."RECONCILED_DIAGNOSIS_CODE_ICD10" ;;
  }

  dimension: relationship_to_employee {
    type: string
    sql: ${TABLE}."RELATIONSHIP_TO_EMPLOYEE" ;;
  }

  dimension: revenue_code {
    type: string
    sql: ${TABLE}."REVENUE_CODE" ;;
  }

  dimension: service_code {
    type: string
    sql: ${TABLE}."SERVICE_CODE" ;;
  }

  dimension_group: service {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."SERVICE_DATE" ;;
  }

  dimension: service_provider_city {
    type: string
    sql: ${TABLE}."SERVICE_PROVIDER_CITY" ;;
  }

  dimension: service_provider_id {
    type: string
    sql: ${TABLE}."SERVICE_PROVIDER_ID" ;;
  }

  dimension: service_provider_name {
    type: string
    sql: ${TABLE}."SERVICE_PROVIDER_NAME" ;;
  }

  dimension: service_provider_speciality_code {
    type: string
    sql: ${TABLE}."SERVICE_PROVIDER_SPECIALITY_CODE" ;;
  }

  dimension: service_provider_speciality_code_desc {
    type: string
    sql: ${TABLE}."SERVICE_PROVIDER_SPECIALITY_CODE_DESC" ;;
  }

  dimension: service_provider_state {
    type: string
    sql: ${TABLE}."SERVICE_PROVIDER_STATE" ;;
  }

  dimension: service_provider_type_code {
    type: string
    sql: ${TABLE}."SERVICE_PROVIDER_TYPE_CODE" ;;
  }

  dimension: service_provider_type_description {
    type: string
    sql: ${TABLE}."SERVICE_PROVIDER_TYPE_DESCRIPTION" ;;
  }

  dimension: tooth_number {
    type: string
    sql: ${TABLE}."TOOTH_NUMBER" ;;
  }

  dimension: total_billed_amt {
    type: number
    sql: ${TABLE}."TOTAL_BILLED_AMT" ;;
  }

  dimension: total_employer_paid_amt {
    type: number
    sql: ${TABLE}."TOTAL_EMPLOYER_PAID_AMT" ;;
  }

  dimension: total_patient_paid_amt {
    type: number
    sql: ${TABLE}."TOTAL_PATIENT_PAID_AMT" ;;
  }

  dimension: type_of_service_code {
    type: string
    sql: ${TABLE}."TYPE_OF_SERVICE_CODE" ;;
  }

  dimension: type_of_service_description {
    type: string
    sql: ${TABLE}."TYPE_OF_SERVICE_DESCRIPTION" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."UNIQUE_ID" ;;
  }

  dimension: void_status {
    type: string
    sql: ${TABLE}."VOID_STATUS" ;;
  }

  measure: count {
    type: count
    drill_fields: [service_provider_name, bill_provider_name, employer_name, employer_group_name, place_of_service_name]
  }
}
