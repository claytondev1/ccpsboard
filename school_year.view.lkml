view: school_year {
  sql_table_name: dbo.SchoolYear ;;

  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.endDate ;;
  }

  dimension: end_year {
    type: number
    sql: ${TABLE}.endYear ;;
  }

  dimension: instructional_exclude_gaps {
    type: string
    sql: ${TABLE}.instructional_excludeGaps ;;
  }

  dimension: instructional_exclude_non_intructional_minutes {
    type: string
    sql: ${TABLE}.instructional_excludeNonIntructionalMinutes ;;
  }

  dimension: instructional_exclude_non_intructional_periods {
    type: string
    sql: ${TABLE}.instructional_excludeNonIntructionalPeriods ;;
  }

  dimension: instructional_max_gaps_minutes {
    type: number
    sql: ${TABLE}.instructional_maxGapsMinutes ;;
  }

  dimension: instructional_max_non_intructional_minutes {
    type: number
    sql: ${TABLE}.instructional_maxNonIntructionalMinutes ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: school_day_exclude_gaps {
    type: string
    sql: ${TABLE}.schoolDay_excludeGaps ;;
  }

  dimension: school_day_exclude_non_intructional_minutes {
    type: string
    sql: ${TABLE}.schoolDay_excludeNonIntructionalMinutes ;;
  }

  dimension: school_day_exclude_non_intructional_periods {
    type: string
    sql: ${TABLE}.schoolDay_excludeNonIntructionalPeriods ;;
  }

  dimension: school_day_max_gaps_minutes {
    type: number
    sql: ${TABLE}.schoolDay_maxGapsMinutes ;;
  }

  dimension: school_day_max_non_intructional_minutes {
    type: number
    sql: ${TABLE}.schoolDay_maxNonIntructionalMinutes ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.startDate ;;
  }

  dimension: start_year {
    type: number
    sql: ${TABLE}.startYear ;;
  }

  dimension: state_generated_year_id {
    type: string
    sql: ${TABLE}.stateGeneratedYearID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
