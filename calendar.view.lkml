view: calendar {
  sql_table_name: dbo.calendar ;;

  dimension: calendar_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.calendarID ;;
  }

  dimension: alternative_code {
    type: string
    sql: ${TABLE}.alternativeCode ;;
  }

  dimension: assignment_required {
    type: string
    sql: ${TABLE}.assignmentRequired ;;
  }

  dimension: attendance_type {
    type: string
    sql: ${TABLE}.attendanceType ;;
  }

  dimension: calendar_guid {
    type: string
    sql: ${TABLE}.calendarGUID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: count_date {
    type: string
    sql: ${TABLE}.countDate ;;
  }

  dimension: district_id {
    type: number
    sql: ${TABLE}.districtID ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.endDate ;;
  }

  dimension: end_year {
    type: number
    sql: ${TABLE}.endYear ;;
  }

  dimension: exclude {
    type: string
    sql: ${TABLE}.exclude ;;
  }

  dimension: external_lmsexclude {
    type: string
    sql: ${TABLE}.externalLMSExclude ;;
  }

  dimension: half_day_absence {
    type: number
    sql: ${TABLE}.halfDayAbsence ;;
  }

  dimension: legacy_key {
    type: number
    sql: ${TABLE}.legacyKey ;;
  }

  dimension_group: legacy_key_ghsa {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.legacyKey_GHSA_date ;;
  }

  dimension: legacy_key_ghsa_method {
    type: string
    sql: ${TABLE}.legacyKey_GHSA_method ;;
  }

  dimension: legacy_key_ghsa_minscore {
    type: number
    sql: ${TABLE}.legacyKey_GHSA_minscore ;;
  }

  dimension: legacy_key_ghsa_post_time {
    type: string
    sql: ${TABLE}.legacyKey_GHSA_postTime ;;
  }

  dimension: legacy_key_ghsa_report_period {
    type: string
    sql: ${TABLE}.legacyKey_GHSA_reportPeriod ;;
  }

  dimension: legacy_key_ghsa_task_id {
    type: string
    sql: ${TABLE}.legacyKey_GHSA_taskID ;;
  }

  dimension: legacy_key_ghsa_term_id {
    type: string
    sql: ${TABLE}.legacyKey_GHSA_termID ;;
  }

  dimension: legacy_key_import {
    type: number
    sql: ${TABLE}.legacyKeyImport ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}.number ;;
  }

  dimension: positive_attendance_edit_days {
    type: number
    sql: ${TABLE}.positiveAttendanceEditDays ;;
  }

  dimension: positive_attendance_enabled {
    type: string
    sql: ${TABLE}.positiveAttendanceEnabled ;;
  }

  dimension: school_choice {
    type: string
    sql: ${TABLE}.schoolChoice ;;
  }

  dimension: school_id {
    type: number
    sql: ${TABLE}.schoolID ;;
  }

  dimension: sequence {
    type: number
    sql: ${TABLE}.sequence ;;
  }

  dimension: sif_exclude {
    type: string
    sql: ${TABLE}.sifExclude ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.startDate ;;
  }

  dimension: student_day {
    type: number
    sql: ${TABLE}.studentDay ;;
  }

  dimension: summer_school {
    type: string
    sql: ${TABLE}.summerSchool ;;
  }

  dimension: teacher_day {
    type: number
    sql: ${TABLE}.teacherDay ;;
  }

  dimension: title1 {
    type: string
    sql: ${TABLE}.title1 ;;
  }

  dimension: title3 {
    type: string
    sql: ${TABLE}.title3 ;;
  }

  dimension: title3consortium {
    type: string
    sql: ${TABLE}.title3consortium ;;
  }

  dimension: track {
    type: string
    sql: ${TABLE}.track ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: type_bie {
    type: string
    sql: ${TABLE}.typeBIE ;;
  }

  dimension: whole_day_absence {
    type: number
    sql: ${TABLE}.wholeDayAbsence ;;
  }

  measure: count {
    type: count

  }


}
