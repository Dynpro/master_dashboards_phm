view: vw_risk_group_migration {
  label: "Risk Group Migration"
  sql_table_name: "SCH_SIH"."VW_RISK_GROUP_MIGRATION"
    ;;
  drill_fields: [Unique_id, File_year, Risk_group, Total_paid_amt, Mean_paid_amt, Chronic, Chronic_count, Comorbid, Comorbid_count]


  dimension: Unique_id {
    type: string
    sql: ${TABLE}."UNIQUE_ID" ;;
  }

  dimension: Chronic {
    type: yesno
    sql: ${TABLE}."CHRONIC" ;;
  }

  dimension: Chronic_count {
    type: number
    sql: ${TABLE}."CHRONIC_COUNT" ;;
  }

  dimension: Comorbid {
    type: yesno
    sql: ${TABLE}."COMORBID" ;;
  }

  dimension: Comorbid_count {
    type: number
    sql: ${TABLE}."COMORBID_COUNT" ;;
  }

  dimension: File_year {
    type: string
    sql: ${TABLE}."FILE_YEAR" ;;
  }

  dimension: Risk_group {
    type: string
    sql: ${TABLE}."RISK_GROUP" ;;
  }

  measure: Total_paid_amt {
    type: sum
    label: "Total $"
    sql: ${TABLE}."TOTAL_PAID_AMT" ;;
    value_format: "$#,##0.00"
  }

  measure: Mean_paid_amt {
    type: average
    label: "Mean $"
    sql: ${TABLE}."AVERAGE_PAID_AMT" ;;
    value_format: "$#,##0.00"
  }

  measure: Total_Patients {
    type: count_distinct
    label: "N"
    sql:  ${Unique_id};;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }
}
