view: hedis_measure {
  sql_table_name: "SCH_KAIROS_ARKANSAS_MUNICIPAL_LEAGUE"."HEDIS_MEASURES"
    ;;

##ADULT'S ACCESS TO PREVENTIVE/AMBULATORY HEALTH SERVICES
  dimension: aap_compliant {
    type: string
    label: "AAP Compliant"
    sql: ${TABLE}."AAP_COMPLIANT" ;;
  }

  dimension: aap_eligible {
    type: string
    label: "AAP Eligible"
    sql: ${TABLE}."AAP_ELIGIBLE" ;;
  }

  measure: aap_compliant_patients {
    type: count_distinct
    label: "AAP Compliant - N"
    filters: [aap_compliant: "1"]
    sql: ${unique_id} ;;
  }

  measure: aap_eligible_patients {
    type: count_distinct
    label: "AAP Eligible - N"
    filters: [aap_eligible: "1"]
    sql: ${unique_id} ;;
  }

##ADULT BMI ASSESSMENT
  dimension: aba_compliant {
    type: string
    label: "ABA Compliant"
    sql: ${TABLE}."ABA_COMPLIANT" ;;
  }

  dimension: aba_compliant_categories {
    type: string
    label: "ABA Compliant Categories"
    sql: ${TABLE}."ABA_COMPLIANT_CATEGORIES" ;;
  }

  dimension: aba_eligible {
    type: string
    label: "ABA Eligible"
    sql: ${TABLE}."ABA_ELIGIBLE" ;;
  }

  measure: aba_compliant_patients {
    type: count_distinct
    label: "ABA Compliant - N"
    filters: [aba_compliant: "1"]
    sql: ${unique_id} ;;
  }

  measure: aba_eligible_patients {
    type: count_distinct
    label: "ABA Eligible - N"
    filters: [aba_eligible: "1"]
    sql: ${unique_id} ;;
  }

  ##Need to discuss whether to include or not
  dimension: aba_compliant_age_less_than_20 {
    type: string
    hidden: yes
    label: "ABA Compliant (Age < 20) - N"
    sql: CASE WHEN ${aba_compliant_categories} = 'ABA_Compliant_Age_less_than_20' THEN '1'
      ELSE '0'
      END ;;
  }

  measure: patients_aba_compliant_age_less_than_20 {
    type: count_distinct
    filters: [aba_compliant_categories: "ABA_Compliant_Age_less_than_20"]
    label: "ABA Compliant (Age < 20) - N"
    sql: ${unique_id} ;;
  }

  measure: patients_aba_compliant_age_more_than_20 {
    type: count_distinct
    filters: [aba_compliant_categories: "ABA_Compliant_Age_more_than_20"]
    label: "ABA Compliant (Age >= 20) - N"
    sql: ${unique_id} ;;
  }

##ANTIDEPRESSANT MEDICATION MANAGEMENT
  dimension: amm_effective_antidepressant_acute_phase_treatment {
    type: string
    label: "AMM Compliant - Acute phase treatment"
    sql: ${TABLE}."AMM_EFFECTIVE_ANTIDEPRESSANT_ACUTE_PHASE_TREATMENT" ;;
  }

  dimension: amm_effective_antidepressant_continuation_phase_treatment {
    type: string
    label: "AMM Compliant - Continuation phase treatment"
    sql: ${TABLE}."AMM_EFFECTIVE_ANTIDEPRESSANT_CONTINUATION_PHASE_TREATMENT" ;;
  }

  dimension: amm_eligible {
    type: string
    label: "AMM Eligible"
    sql: ${TABLE}."AMM_ELIGIBLE" ;;
  }

  dimension: amm_compliant {
    type: string
    label: "AMM Compliant"
    sql: CASE WHEN ${amm_effective_antidepressant_acute_phase_treatment} = '1' OR ${amm_effective_antidepressant_continuation_phase_treatment} = '1'
          THEN '1'
      ELSE '0'
      END ;;
  }

  measure: patients_amm_effective_antidepressant_acute_phase_treatment {
    type: count_distinct
    label: "AMM Compliant - Acute phase treatment"
    filters: [amm_effective_antidepressant_acute_phase_treatment: "1"]
    sql: ${unique_id} ;;
  }

  measure: patients_amm_effective_antidepressant_continuation_phase_treatment {
    type: count_distinct
    label: "AMM Compliant - Continuation phase treatment"
    filters: [amm_effective_antidepressant_continuation_phase_treatment: "1"]
    sql: ${unique_id} ;;
  }

  measure: patients_amm_compliant {
    type: count_distinct
    filters: [amm_compliant: "1"]
    label: "AMM Compliant - N"
    sql: ${unique_id} ;;
  }

  measure: patients_amm_eligible {
    type: count_distinct
    filters: [amm_eligible: "1"]
    label: "AMM Eligible - N"
    sql: ${unique_id} ;;
  }


##BREAST CANCER SCREENING
  dimension: bcs_compliant {
    type: string
    label: "BCS Compliant"
    sql: ${TABLE}."BCS_COMPLIANT" ;;
  }

  dimension: bcs_eligible {
    type: string
    label: "BCS Eligible"
    sql: ${TABLE}."BCS_ELIGIBLE" ;;
  }

  measure: bcs_compliant_patients {
    type: count_distinct
    filters: [bcs_compliant: "1"]
    label: "BCS Compliant - N"
    sql: ${unique_id} ;;
  }

  measure: bcs_eligible_patients {
    type: count_distinct
    label: "BCS Eligible - N"
    filters: [bcs_eligible: "1"]
    sql: ${unique_id} ;;
  }

##CONTROLLING HIGH BLOOD PRESSURE
  dimension: cbp_compliant {
    type: string
    label: "CBP Compliant"
    sql: ${TABLE}."CBP_COMPLIANT" ;;
  }

  dimension: cbp_eligible {
    type: string
    label: "CBP Eligible"
    sql: ${TABLE}."CBP_ELIGIBLE" ;;
  }

  measure: cbp_compliant_patients {
    type: count_distinct
    filters: [cbp_compliant: "1"]
    label: "CBP Compliant - N"
    sql: ${unique_id} ;;
  }

  measure: cbp_eligible_patients {
    type: count_distinct
    filters: [cbp_eligible: "1"]
    label: "CBP Eligible - N"
    sql: ${unique_id} ;;
  }

##CERVICAL CANCER SCREENING
  dimension: ccs_compliant {
    type: string
    label: "CCS Comliant"
    sql: ${TABLE}."CCS_COMPLIANT" ;;
  }

  dimension: ccs_eligible {
    type: string
    label: "CCS Eligible"
    sql: ${TABLE}."CCS_ELIGIBLE" ;;
  }

  measure: ccs_compliant_patients {
    type: count_distinct
    filters: [ccs_compliant: "1"]
    label: "CCS Comliant - N"
    sql: ${unique_id} ;;
  }

  measure: ccs_eligible_patients {
    type: count_distinct
    filters: [ccs_eligible: "1"]
    label: "CCS Eligible - N"
    sql: ${unique_id} ;;
  }

##COMPREHENSIVE DIABETES CARE
  dimension: cdc_bp_control_14090_mm_hg {
    type: string
    label: "CDC: BP control (<140/90 mm Hg)"
    sql: ${TABLE}."CDC_BP_Control_Less_Than_140mm_OR_90hg" ;;
  }

  measure: cdc_bp_control_14090_mm_hg_patients {
    type: count_distinct
    filters: [cdc_bp_control_14090_mm_hg: "1"]
    label: "CDC: BP Control (140/90 mm/hg) - N"
    sql: ${unique_id} ;;
  }

  dimension: cdc_hb_a1c_control_7_0 {
    type: string
    label: "CDC: HbA1c control (<7.0%)"
    sql: ${TABLE}."CDC_HBA1C_Control_Less_Than_7_Percentage" ;;
  }

  measure: cdc_hb_a1c_control_7_0_patients {
    type: count_distinct
    filters: [cdc_hb_a1c_control_7_0: "1"]
    label: "CDC: HbA1c control (<7.0%) - N"
    sql: ${unique_id} ;;
  }

  dimension: cdc_hemoglobin_a1c_hb_a1c_testing {
    type: string
    label: "CDC: Hemoglobin A1c (HbA1c) testing"
    sql: ${TABLE}."CDC_Hemoglobin_HBA1C_Testing" ;;
  }

  measure: cdc_hemoglobin_a1c_hb_a1c_testing_patients {
    type: count_distinct
    filters: [cdc_hemoglobin_a1c_hb_a1c_testing: "1"]
    label: "CDC: Hemoglobin A1c (HbA1c) testing - N"
    sql: ${unique_id} ;;
  }

  dimension: cdc_hg_a1c_poor_control_9_0 {
    type: string
    label: "CDC: HgA1c poor control (>9.0%)"
    sql: ${TABLE}."CDC_HGA1C_Poor_Control_Greater_Than_9_Percentage" ;;
  }

  measure: cdc_hg_a1c_poor_control_9_0_patients {
    type: count_distinct
    label: "CDC: HgA1c poor control (>9.0%) - N"
    filters: [cdc_hg_a1c_poor_control_9_0: "1"]
    sql: ${unique_id} ;;
  }

  dimension: cdc_hgb_a1c_control_8_0 {
    type: string
    label: "CDC: HgbA1c control (<8.0%)"
    sql: ${TABLE}."CDC_HGBA1C_Control_Less_Than_8_Percentage" ;;
  }

  measure: cdc_hgb_a1c_control_8_0_patients {
    type: count_distinct
    filters: [cdc_hgb_a1c_control_8_0: "1"]
    label: "CDC: HgbA1c control (<8.0%) - N"
    sql: ${unique_id} ;;
  }

  dimension: cdc_medical_attention_for_nephropathy {
    type: string
    label: "CDC: Medical attention for nephropathy"
    sql: ${TABLE}."CDC_Medical_Attention_For_Nephropathy" ;;
  }

  measure: cdc_medical_attention_for_nephropathy_patients {
    type: count_distinct
    filters: [cdc_medical_attention_for_nephropathy: "1"]
    label: "CDC: Medical attention for nephropathy - N"
    sql: ${unique_id} ;;
  }

  dimension: cdc_testing_eye_exam_retinal_performed {
    type: string
    label: "CDC: testing Eye exam (retinal) performed"
    sql: ${TABLE}."CDC_Testing_EYE_Exam_Performed" ;;
  }

  measure: cdc_testing_eye_exam_retinal_performed_patients {
    type: count_distinct
    label: "CDC: testing Eye exam (retinal) performed - N"
    filters: [cdc_testing_eye_exam_retinal_performed: "1"]
    sql: ${unique_id} ;;
  }

  dimension: cdc_compliant {
    type: string
    label: "CDC Compliant"
    sql: ${TABLE}."CDC_COMPLIANT" ;;
  }

  measure: cdc_compliant_patients {
    type: count_distinct
    label: "CDC Compliant - N"
    filters: [cdc_compliant: "1"]
    sql: ${unique_id} ;;
  }

  dimension: cdc_eligible {
    type: string
    label: "CDC Eligible"
    sql: ${TABLE}."CDC_ELIGIBLE" ;;
  }

  measure: cdc_eligible_patients {
    type: count_distinct
    label: "CDC Eligible - N"
    filters: [cdc_eligible: "1"]
    sql: ${unique_id} ;;
  }

##COLORECTAL CANCER SCREENING
  dimension: col_compliant {
    type: string
    label: "COL Compliant"
    sql: ${TABLE}."COL_COMPLIANT" ;;
  }

  dimension: col_eligible {
    type: string
    label: "COL Eligible"
    sql: ${TABLE}."COL_ELIGIBLE" ;;
  }

  measure: col_compliant_patients {
    type: count_distinct
    label: "COL Compliant - N"
    filters: [col_compliant: "1"]
    sql: ${unique_id} ;;
  }

  measure: col_eligible_patients {
    type: count_distinct
    filters: [col_eligible: "1"]
    label: "COL Eligible - N"
    sql: ${unique_id} ;;
  }

##OSTEOPOROSIS MANAGEMENT IN WOMEN WHO HAD A FRACTURE
  dimension: omw_compliant {
    type: string
    label: "OMW Compliant"
    sql: ${TABLE}."OMW_COMPLIANT" ;;
  }

  dimension: omw_eligible {
    type: string
    label: "OMW Eligible"
    sql: ${TABLE}."OMW_ELIGIBLE" ;;
  }

  measure: omw_compliant_patients {
    type: count_distinct
    filters: [omw_compliant: "1"]
    label: "OMW Compliant - N"
    sql: ${unique_id} ;;
  }

  measure: omw_eligible_patients {
    type: count_distinct
    filters: [omw_eligible: "1"]
    label: "OMW Eligible - N"
    sql: ${unique_id} ;;
  }

##DIABETES MONITORING FOR PEOPLE WITH DIABETES AND SCHIZOPHRENIA
  dimension: smd_compliant {
    type: string
    label: "SMD Compliant"
    sql: ${TABLE}."SMD_COMPLIANT" ;;
  }

  dimension: smd_eligible {
    type: string
    label: "SMD Eligible"
    sql: ${TABLE}."SMD_ELIGIBLE" ;;
  }

  measure: smd_compliant_patients {
    type: count_distinct
    filters: [smd_compliant: "1"]
    label: "SMD Compliant - N"
    sql: ${unique_id} ;;
  }

  measure: smd_eligible_patients {
    type: count_distinct
    filters: [smd_eligible: "1"]
    label: "SMD Eligible - N"
    sql: ${unique_id} ;;
  }

##USE OF SPIROMETRY TESTING IN THE ASSESSMENT AND DIAGNOSIS OF COPD
  dimension: spr_compliant {
    type: string
    label: "SPR Compliant"
    sql: ${TABLE}."SPR_COMPLIANT" ;;
  }

  dimension: spr_eligible {
    type: string
    label: "SPR Eligible"
    sql: ${TABLE}."SPR_ELIGIBLE" ;;
  }

  measure: spr_compliant_patients {
    type: count_distinct
    filters: [spr_compliant: "1"]
    label: "SPR Compliant - N"
    sql: ${unique_id} ;;
  }

  measure: spr_eligible_patients {
    type: count_distinct
    filters: [spr_eligible: "1"]
    label: "SPR Eligible - N"
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

  measure: total_patients {
    type: count_distinct
    label: "N"
    description: "Total Patient/Individual count"
    sql: ${unique_id} ;;
  }
}
