connection: "snowflake_prod"

# include all the views
include: "/views/**/*.view"

datagroup: sih_groups_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sih_groups_default_datagroup

explore: vw_medical {
  join: vw_risk_group_migration {
    type: left_outer
    relationship: many_to_one
    sql_on: ${vw_medical.unique_id} = ${vw_risk_group_migration.Unique_id} AND
            ${vw_medical.paid_year} = ${vw_risk_group_migration.File_year};;
  }
}

explore: vw_risk_group_migration {}
