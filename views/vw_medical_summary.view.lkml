view: vw_medical_summary {
  label: "MEDICAL Summary"
  derived_table: {
    sql: select
          "PAID_DATE" as PAID_DATE,
          "UNIQUE_ID" as PATIENT_ID,
          "PATIENT_GENDER" as PATIENT_GENDER,
          "RELATIONSHIP_TO_EMPLOYEE" as RELATIONSHIP_TO_EMPLOYEE,
          MAX("PATIENT_AGE") as PATIENT_AGE,
          SUM("TOTAL_BILLED_AMT") as Total_Billed_Amt,
          SUM("TOTAL_EMPLOYER_PAID_AMT") as Total_Paid_Amt,
          AVG("TOTAL_EMPLOYER_PAID_AMT") as Average_Paid_Amt
         from
        "SCH_SIH"."VW_MEDICAL"
        WHERE                                 /* Dynamic Filter condition*/
            {% condition DISEASE_CATEGORY %} "ICD_DISEASE_CATEGORY" {% endcondition %} AND
            {% condition PROCEDURE_MAJOR_CATEGORY %} "PROCEDURE_CATEGORY" {% endcondition %} AND
            {% condition PROCEDURE_SUBCATEGORY %} "PROCEDURE_SUBCATEGORY" {% endcondition %} AND
            {% condition DISEASE_SUBCATEGORY %} "DISEASE_SUB_CATEGORY" {% endcondition %} AND
            {% condition DISEASE_DESCRIPTION %} "ICD_DESCRIPTION" {% endcondition %} AND
            {% condition DIAGNOSIS_CODE %} "RECONCILED_DIAGNOSIS_CODE_ICD10" {% endcondition %} AND
            {% condition CHRONIC_CATEGORY %} "ICD_CHRONIC_CAT" {% endcondition %} AND
            {% condition GENDER %} "PATIENT_GENDER" {% endcondition %} AND
            {% condition EMPLOYEE_RELATIONSHIP %} "RELATIONSHIP_TO_EMPLOYEE" {% endcondition %} AND
            {% condition PLACE_OF_SERVICE_DESC %} "PLACE_OF_SERVICE_DESCRIPTION" {% endcondition %} AND
            {% condition MAJOR_DISEASE_DIABETES %} "ICD_MAJOR_DISEASE" {% endcondition %} AND
            {% condition PROCEDURE_CODE_TYPE %} "PROCEDURE_CODE_TYPE" {% endcondition %} AND
            {% condition PROCEDURE_CODE_DESC %} "PROCEDURE_DESCRIPTION" {% endcondition %} AND
            {% condition PROCEDURE_CODE %} "PRIMARY_PROCEDURE_CODE" {% endcondition %} AND
            {% condition LS_MODIFY_OR_NOT %} "ICD_LS_MODIFY" {% endcondition %} AND
            {% condition ACUTE_OR_NOT %} "ICD_ACUTE" {% endcondition %} AND
            {% condition PREVENTATIVE_OR_NOT %} "ICD_PREVENTATIVE" {% endcondition %} AND
            {% condition CHRONIC_OR_NOT %} "2012_CHRONIC" {% endcondition %} AND
            {% condition AVOIDABLE_ER_OR_NOT %} "ICD_AVOIDABLE_ER" {% endcondition %} AND
            {% condition DIGESTIVE_DISEASE_OR_NOT %} "ICD_DIGESTIVE_DISEASE" {% endcondition %}
            ;;
    }
  }
