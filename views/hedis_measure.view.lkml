view: hedis_measure {
  sql_table_name: "SCH_SIH"."HEDIS_MEASURE"
    ;;

##ADULT'S ACCESS TO PREVENTIVE/AMBULATORY HEALTH SERVICES
  dimension: aap_compliant {
    type: number
    sql: ${TABLE}."AAP_COMPLIANT" ;;
  }

  dimension: aap_eligible {
    type: number
    sql: ${TABLE}."AAP_ELIGIBLE" ;;
  }

  measure: aap_compliant_patients {
    type: sum
    filters: [aap_compliant: "1"]
    sql: ${aap_compliant} ;;
  }

  measure: aap_eligible_patients {
    type: sum
    filters: [aap_eligible: "1"]
    sql: ${aap_eligible} ;;
  }

##ADULT BMI ASSESSMENT
  dimension: aba_compliant {
    type: number
    sql: ${TABLE}."ABA_COMPLIANT" ;;
  }

  dimension: aba_compliant_categories {
    type: string
    sql: ${TABLE}."ABA_COMPLIANT_CATEGORIES" ;;
  }

  dimension: aba_eligible {
    type: number
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

##BREAST CANCER SCREENING
  dimension: bcs_compliant {
    type: string
    sql: ${TABLE}."BCS_COMPLIANT" ;;
  }

  dimension: bcs_eligible {
    type: string
    sql: ${TABLE}."BCS_ELIGIBLE" ;;
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

##CERVICAL CANCER SCREENING
  dimension: ccs_compliant {
    type: string
    sql: ${TABLE}."CCS_COMPLIANT" ;;
  }

  dimension: ccs_eligible {
    type: string
    sql: ${TABLE}."CCS_ELIGIBLE" ;;
  }

##COMPREHENSIVE DIABETES CARE
  dimension: cdc__bp_control_14090_mm_hg {
    type: string
    sql: ${TABLE}."CDC - BP control (<140/90 mm Hg)" ;;
  }

  dimension: cdc__hb_a1c_control_7_0 {
    type: string
    sql: ${TABLE}."CDC - HbA1c control (<7.0%)" ;;
  }

  dimension: cdc__hemoglobin_a1c_hb_a1c_testing {
    type: string
    sql: ${TABLE}."CDC - Hemoglobin A1c (HbA1c) testing" ;;
  }

  dimension: cdc__hg_a1c_poor_control_9_0 {
    type: string
    sql: ${TABLE}."CDC - HgA1c poor control (>9.0%)" ;;
  }

  dimension: cdc__hgb_a1c_control_8_0 {
    type: string
    sql: ${TABLE}."CDC - HgbA1c control (<8.0%)" ;;
  }

  dimension: cdc__medical_attention_for_nephropathy {
    type: string
    sql: ${TABLE}."CDC - Medical attention for nephropathy" ;;
  }

  dimension: cdc__testing_eye_exam_retinal_performed {
    type: string
    sql: ${TABLE}."CDC - testing Eye exam (retinal) performed" ;;
  }

  dimension: cdc_compliant {
    type: string
    sql: ${TABLE}."CDC_COMPLIANT" ;;
  }

  dimension: cdc_eligible {
    type: string
    sql: ${TABLE}."CDC_ELIGIBLE" ;;
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

##OSTEOPOROSIS MANAGEMENT IN WOMEN WHO HAD A FRACTURE
  dimension: omw_compliant {
    type: string
    sql: ${TABLE}."OMW_COMPLIANT" ;;
  }

  dimension: omw_eligible {
    type: string
    sql: ${TABLE}."OMW_ELIGIBLE" ;;
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

##USE OF SPIROMETRY TESTING IN THE ASSESSMENT AND DIAGNOSIS OF COPD
  dimension: spr_compliant {
    type: string
    sql: ${TABLE}."SPR_COMPLIANT" ;;
  }

  dimension: spr_eligible {
    type: string
    sql: ${TABLE}."SPR_ELIGIBLE" ;;
  }


  dimension: unique_id {
    type: string
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
