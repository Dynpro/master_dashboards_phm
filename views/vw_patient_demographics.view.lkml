view: vw_patient_demographics {
  sql_table_name: "SCH_SIH"."VW_PATIENT_DEMOGRAPHICS"
    ;;

  dimension: dependent_f_name {
    type: string
    sql: ${TABLE}."DEPENDENT_F_NAME" ;;
  }

  dimension: dependent_l_name {
    type: string
    sql: ${TABLE}."DEPENDENT_L_NAME" ;;
  }

  dimension: dependent_m_name {
    type: string
    sql: ${TABLE}."DEPENDENT_M_NAME" ;;
  }

  dimension: dependent_ssn {
    type: string
    sql: ${TABLE}."DEPENDENT_SSN" ;;
  }

  dimension: employee_id {
    type: string
    sql: ${TABLE}."EMPLOYEE_ID" ;;
  }

  dimension: member_id {
    type: string
    sql: ${TABLE}."MEMBER_ID" ;;
  }

  dimension: paid_year {
    type: number
    sql: ${TABLE}."PAID_YEAR" ;;
  }

  dimension_group: patient_dob {
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
    sql: ${TABLE}."PATIENT_DOB" ;;
  }

  dimension: patient_gender {
    type: string
    sql: ${TABLE}."PATIENT_GENDER" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."UNIQUE_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [dependent_f_name, dependent_l_name, dependent_m_name]
  }
}
