view: v_enrollment_in_apcourse {
  sql_table_name: dbo.vEnrollmentInAPCourse ;;

  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
    label: "First Name"
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
    label: "Last Name"
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
    label: "#AP Enrollment"

  }

  measure: count {
    type: count_distinct
    sql: ${student_number} ;;
    label: "Total Enrollment"

  }

}
