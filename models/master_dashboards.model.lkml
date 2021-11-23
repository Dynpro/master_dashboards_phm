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
  sql_always_where: ${Paid_year} IN ('2018', '2019', '2020') ;;
}

explore: vw_pharmacy {
  label: "Pharmacy records"
  sql_always_where: ${date_filled_year} IN ('2019', '2020') ;;
}

explore: vw_med_and_pharma_summary_1 {
  label: "Ad Hoc Query Tool"
  sql_always_where: ${PAID_YEAR} IN ('2018', '2019', '2020') ;;
}

explore: ad_hoc_query_tool_medical {
  label: "Ad Hoc Query Tool_MEDICAL"
  sql_always_where: ${PAID_DATE_year} IN ('2018', '2019', '2020') ;;
}

explore: ad_hoc_query_tool_pharmacy {
  label: "Ad Hoc Query Tool_PHARMACY"
  sql_always_where: ${SERVICE_DATE_year} IN ('2019', '2020') ;;
}

explore: vw_cohort_analysis_summary_1 {
  label: "Cohort Analysis"
  sql_always_where: ${PAID_YEAR} IN ('2018', '2019', '2020') ;;
}

explore: vw_risk_group_migration {
  label: "Risk Group Migration"
  sql_always_where: ${File_year} IN ('2018', '2019', '2020') ;;
}

explore: vw_risk_group_med_pharma_summary {
  label: "Risk Group - Med & Pharma summary"
  sql_always_where: ${File_year} IN ('2018', '2019', '2020') ;;
}

explore: vw_medication_possession_ratio {
  label: "Medication Possession Ratio"
  sql_always_where: ${year} IN ('2018', '2019', '2020') ;;
}

explore: vw_preventive_screening {
  label: "Preventive Screening"
  sql_always_having: ${year} IN ('2018', '2019', '2020') ;;
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
