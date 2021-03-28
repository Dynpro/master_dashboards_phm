connection: "snowflake_prod"

# include all the views
include: "/views/**/*.view"

datagroup: sih_groups_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sih_groups_default_datagroup

explore: vw_medical {}

explore: vw_risk_group_migration {}
