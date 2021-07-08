connection: "snowflake_prod"

# include all the views
include: "/views/**/*.view"

datagroup: sih_groups_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sih_groups_default_datagroup

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
  label: "Risk Group Migration"
}

explore: vw_risk_group_med_pharma_summary {
  label: "Risk Group - Med & Pharma summary"
}

explore: vw_medication_possession_ratio {
  label: "Medication Possession Ratio"
}
