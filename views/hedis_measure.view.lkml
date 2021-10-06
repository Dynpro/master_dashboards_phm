view: hedis_measure {
  sql_table_name: "SCH_SIH"."HEDIS_MEASURE"
    ;;

##ADULT'S ACCESS TO PREVENTIVE/AMBULATORY HEALTH SERVICES
  dimension: aap_compliant {
    type: string
    sql: ${TABLE}."AAP_COMPLIANT" ;;
  }

  dimension: aap_eligible {
    type: string
    sql: ${TABLE}."AAP_ELIGIBLE" ;;
  }

  measure: aap_compliant_patients {
    type: count_distinct
    filters: [aap_compliant: "1"]
    sql: ${unique_id} ;;
  }

  measure: aap_eligible_patients {
    type: count_distinct
    filters: [aap_eligible: "1"]
    sql: ${unique_id} ;;
  }

##ADULT BMI ASSESSMENT
  dimension: aba_compliant {
    type: string
    sql: ${TABLE}."ABA_COMPLIANT" ;;
  }

  dimension: aba_compliant_categories {
    type: string
    sql: ${TABLE}."ABA_COMPLIANT_CATEGORIES" ;;
  }

  dimension: aba_eligible {
    type: string
    sql: ${TABLE}."ABA_ELIGIBLE" ;;
  }

  measure: aba_compliant_patients {
    type: count_distinct
    filters: [aba_compliant: "1"]
    sql: ${unique_id} ;;
  }

  measure: aba_eligible_patients {
    type: count_distinct
    filters: [aba_eligible: "1"]
    sql: ${unique_id} ;;
  }

##ANTIDEPRESSANT MEDICATION MANAGEMENT
  dimension: amm_effective_antidepressant_acute_phase_treatment {
    type: string
    sql: ${TABLE}."AMM_EFFECTIVE_ANTIDEPRESSANT_ACUTE_PHASE_TREATMENT" ;;
  }

  dimension: amm_effective_antidepressant_continuation_phase_treatment {
    type: string
    sql: ${TABLE}."AMM_EFFECTIVE_ANTIDEPRESSANT_CONTINUATION_PHASE_TREATMENT" ;;
  }

  dimension: amm_eligible {
    type: string
    sql: ${TABLE}."AMM_ELIGIBLE" ;;
  }

  measure: patients_amm_effective_antidepressant_acute_phase_treatment {
    type: count_distinct
    filters: [amm_effective_antidepressant_acute_phase_treatment: "1"]
    sql: ${unique_id} ;;
  }

  measure: patients_amm_effective_antidepressant_continuation_phase_treatment {
    type: count_distinct
    filters: [amm_effective_antidepressant_continuation_phase_treatment: "1"]
    sql: ${unique_id} ;;
  }

  measure: patients_amm_eligible {
    type: count_distinct
    filters: [amm_eligible: "1"]
    sql: ${unique_id} ;;
  }


##BREAST CANCER SCREENING
  dimension: bcs_compliant {
    type: string
    sql: ${TABLE}."BCS_COMPLIANT" ;;
  }

  dimension: bcs_eligible {
    type: string
    sql: ${TABLE}."BCS_ELIGIBLE" ;;
  }

  measure: bcs_compliant_patients {
    type: count_distinct
    filters: [bcs_compliant: "1"]
    sql: ${unique_id} ;;
  }

  measure: bcs_eligible_patients {
    type: count_distinct
    filters: [bcs_eligible: "1"]
    sql: ${unique_id} ;;
  }

##CONTROLLING HIGH BLOOD PRESSURE
  dimension: cbp_compliant {
    type: string
    sql: ${TABLE}."CBP_COMPLIANT" ;;
  }

  dimension: cbp_eligible {
    type: string
    sql: ${TABLE}."CBP_ELIGIBLE" ;;
  }

  measure: cbp_compliant_patients {
    type: count_distinct
    filters: [cbp_compliant: "1"]
    sql: ${unique_id} ;;
  }

  measure: cbp_eligible_patients {
    type: count_distinct
    filters: [cbp_eligible: "1"]
    sql: ${unique_id} ;;
  }

##CERVICAL CANCER SCREENING
  dimension: ccs_compliant {
    type: string
    sql: ${TABLE}."CCS_COMPLIANT" ;;
  }

  dimension: ccs_eligible {
    type: string
    sql: ${TABLE}."CCS_ELIGIBLE" ;;
  }

  measure: ccs_compliant_patients {
    type: count_distinct
    filters: [ccs_compliant: "1"]
    sql: ${unique_id} ;;
  }

  measure: ccs_eligible_patients {
    type: count_distinct
    filters: [ccs_eligible: "1"]
    sql: ${unique_id} ;;
  }

##COMPREHENSIVE DIABETES CARE
  dimension: cdc__bp_control_14090_mm_hg {
    type: string
    sql: ${TABLE}."CDC - BP control (<140/90 mm Hg)" ;;
  }

  measure: cdc__bp_control_14090_mm_hg_patients {
    type: count_distinct
    filters: [cdc__bp_control_14090_mm_hg: "1"]
    sql: ${unique_id} ;;
  }

  dimension: cdc__hb_a1c_control_7_0 {
    type: string
    sql: ${TABLE}."CDC - HbA1c control (<7.0%)" ;;
  }

  measure: cdc__hb_a1c_control_7_0_patients {
    type: count_distinct
    filters: [cdc__hb_a1c_control_7_0: "1"]
    sql: ${unique_id} ;;
  }

  dimension: cdc__hemoglobin_a1c_hb_a1c_testing {
    type: string
    sql: ${TABLE}."CDC - Hemoglobin A1c (HbA1c) testing" ;;
  }

  measure: cdc__hemoglobin_a1c_hb_a1c_testing_patients {
    type: count_distinct
    filters: [cdc__hemoglobin_a1c_hb_a1c_testing: "1"]
    sql: ${unique_id} ;;
  }

  dimension: cdc__hg_a1c_poor_control_9_0 {
    type: string
    sql: ${TABLE}."CDC - HgA1c poor control (>9.0%)" ;;
  }

  measure: cdc__hg_a1c_poor_control_9_0_patients {
    type: count_distinct
    filters: [cdc__hg_a1c_poor_control_9_0: "1"]
    sql: ${unique_id} ;;
  }

  dimension: cdc__hgb_a1c_control_8_0 {
    type: string
    sql: ${TABLE}."CDC - HgbA1c control (<8.0%)" ;;
  }

  measure: cdc__hgb_a1c_control_8_0_patients {
    type: count_distinct
    filters: [cdc__hgb_a1c_control_8_0: "1"]
    sql: ${unique_id} ;;
  }

  dimension: cdc__medical_attention_for_nephropathy {
    type: string
    sql: ${TABLE}."CDC - Medical attention for nephropathy" ;;
  }

  measure: cdc__medical_attention_for_nephropathy_patients {
    type: count_distinct
    filters: [cdc__medical_attention_for_nephropathy: "1"]
    sql: ${unique_id} ;;
  }

  dimension: cdc__testing_eye_exam_retinal_performed {
    type: string
    sql: ${TABLE}."CDC - testing Eye exam (retinal) performed" ;;
  }

  measure: cdc__testing_eye_exam_retinal_performed_patients {
    type: count_distinct
    filters: [cdc__testing_eye_exam_retinal_performed: "1"]
    sql: ${unique_id} ;;
  }

  dimension: cdc_compliant {
    type: string
    sql: ${TABLE}."CDC_COMPLIANT" ;;
  }

  measure: cdc_compliant_patients {
    type: count_distinct
    filters: [cdc_compliant: "1"]
    sql: ${unique_id} ;;
  }

  dimension: cdc_eligible {
    type: string
    sql: ${TABLE}."CDC_ELIGIBLE" ;;
  }

  measure: cdc_eligible_patients {
    type: count_distinct
    filters: [cdc_eligible: "1"]
    sql: ${unique_id} ;;
  }

##COLORECTAL CANCER SCREENING
  dimension: col_compliant {
    type: string
    sql: ${TABLE}."COL_COMPLIANT" ;;
  }

  dimension: col_eligible {
    type: string
    sql: ${TABLE}."COL_ELIGIBLE" ;;
  }

  measure: col_compliant_patients {
    type: count_distinct
    filters: [col_compliant: "1"]
    sql: ${unique_id} ;;
  }

  measure: col_eligible_patients {
    type: count_distinct
    filters: [col_eligible: "1"]
    sql: ${unique_id} ;;
  }

##OSTEOPOROSIS MANAGEMENT IN WOMEN WHO HAD A FRACTURE
  dimension: omw_compliant {
    type: string
    sql: ${TABLE}."OMW_COMPLIANT" ;;
  }

  dimension: omw_eligible {
    type: string
    sql: ${TABLE}."OMW_ELIGIBLE" ;;
  }

  measure: omw_compliant_patients {
    type: count_distinct
    filters: [omw_compliant: "1"]
    sql: ${unique_id} ;;
  }

  measure: omw_eligible_patients {
    type: count_distinct
    filters: [omw_eligible: "1"]
    sql: ${unique_id} ;;
  }

##DIABETES MONITORING FOR PEOPLE WITH DIABETES AND SCHIZOPHRENIA
  dimension: smd_compliant {
    type: string
    sql: ${TABLE}."SMD_COMPLIANT" ;;
  }

  dimension: smd_eligible {
    type: string
    sql: ${TABLE}."SMD_ELIGIBLE" ;;
  }

  measure: smd_compliant_patients {
    type: count_distinct
    filters: [smd_compliant: "1"]
    sql: ${unique_id} ;;
  }

  measure: smd_eligible_patients {
    type: count_distinct
    filters: [smd_eligible: "1"]
    sql: ${unique_id} ;;
  }

##USE OF SPIROMETRY TESTING IN THE ASSESSMENT AND DIAGNOSIS OF COPD
  dimension: spr_compliant {
    type: string
    sql: ${TABLE}."SPR_COMPLIANT" ;;
  }

  dimension: spr_eligible {
    type: string
    sql: ${TABLE}."SPR_ELIGIBLE" ;;
  }

  measure: spr_compliant_patients {
    type: count_distinct
    filters: [spr_compliant: "1"]
    sql: ${unique_id} ;;
  }

  measure: spr_eligible_patients {
    type: count_distinct
    filters: [spr_eligible: "1"]
    sql: ${unique_id} ;;
  }


  dimension: unique_id {
    type: string
    label: "Patient ID"
    sql: ${TABLE}."UNIQUE_ID" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}."YEAR" ;;
  }

  measure: total_patients {
    type: count_distinct
    label: "N"
    sql: ${unique_id} ;;
  }
}
