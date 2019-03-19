view: splostrevenue {
  sql_table_name: dbo.SPLOSTRevenue ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: average {
    type: number
    sql: ${TABLE}.Average ;;
  }

  dimension: cumulative {
    type: number
    sql: ${TABLE}.Cumulative ;;
  }

  dimension_group: date__received {
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
    sql: ${TABLE}.Date__Received ;;
    label: "Received"
  }

  dimension: delta_grant {
    type: number
    sql: ${TABLE}.Delta_Grant ;;
  }

  dimension_group: inserted {
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
    sql: ${TABLE}.inserted_at ;;
  }

  dimension_group: month_earned {
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
    sql: ${TABLE}.Month_Earned ;;
  }

  dimension: splost_v_amount {
    type: number
    sql: ${TABLE}.Splost_V_Amount ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: avgrevenuebymonth {
    type: average
    sql: ${TABLE}.Splost_V_Amount ;;
  }
}
