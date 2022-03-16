connection: "snowflake_prod"

# include all the views
include: "/views/**/*.view"

datagroup: master_dashboards_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: master_dashboards_default_datagroup


explore: vw_medical {
  label: "Medical records"
}

explore: vw_pharmacy {
  label: "Pharmacy records"
}

explore: vw_med_and_pharma_summary_1 {
  label: "Ad Hoc Query Tool"
}

explore: ad_hoc_query_tool_medical {
  label: "Ad Hoc Query Tool_MEDICAL"
}

explore: ad_hoc_query_tool_pharmacy {
  label: "Ad Hoc Query Tool_PHARMACY"
}

explore: vw_cohort_analysis_summary_1 {
  label: "Cohort Analysis"
}

explore: vw_risk_group_migration {
  join: vw_patient_demographics {
    view_label: "Patient Demographics"
    type: left_outer
    relationship: many_to_one
    sql_on: ${vw_risk_group_migration.Unique_id} = ${vw_patient_demographics.unique_id} ;;
  }
  label: "Risk Group Migration"
}

explore: vw_risk_group_med_pharma_summary {
  label: "Risk Group - Med & Pharma summary"
}

explore: vw_medication_possession_ratio {
  join: vw_patient_demographics {
    view_label: "Patient Demographics"
    type: left_outer
    relationship: many_to_one
    sql_on: ${vw_medication_possession_ratio.unique_id} = ${vw_patient_demographics.unique_id} ;;
  }
  label: "Medication Possession Ratio"
}

explore: vw_preventive_screening {
  join: vw_patient_demographics {
    view_label: "Patient Demographics"
    type: left_outer
    relationship: many_to_one
    sql_on: ${vw_preventive_screening.unique_id} = ${vw_patient_demographics.unique_id} ;;
  }
  label: "Preventive Screening"
}

explore: hedis_measure {
  join: vw_patient_demographics {
    view_label: "Patient Demographics"
    type: left_outer
    relationship: many_to_one
    sql_on: ${hedis_measure.unique_id} = ${vw_patient_demographics.unique_id} ;;
  }
  label: "HEDIS Measures"
}

explore: ebr_measures {
  label: "EBR Measures"
  join: vw_patient_demographics {
    view_label: "Patient Demographics"
    type: left_outer
    relationship: many_to_one
    sql_on: ${ebr_measures.unique_id} = ${vw_patient_demographics.unique_id} ;;
  }
}

explore: vw_patient_demographics {}
