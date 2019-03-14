view: v_dual_enrollment {
  sql_table_name: dbo.vDualEnrollment ;;

  dimension: first_name {
    type: string
    label: "First Name"
    sql: ${TABLE}.firstName ;;

  }

  dimension: last_name {
    label: "Last Name"
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: school_id {
    type: number
    sql: ${TABLE}.schoolID ;;
  }

  dimension: student_number {
    type: string
    sql: ${TABLE}.studentNumber ;;
  }

  measure: totalenrollment{
    type: count_distinct
    sql: ${student_number} ;;
    label: "#Dual Enrollment"

  }

  measure: count {
    type: count_distinct
    sql: ${student_number} ;;
    label: "Total Enrollment"

  }


}
