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
    value_format_name: usd_0
  }

  dimension: cumulative {
    type: number
    sql: ${TABLE}.Cumulative ;;
    value_format_name: usd_0
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
    value_format_name: usd_0
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
    value_format_name: usd_0
  }

  measure: count {
    type: count

  }
  measure: total_splost_revenue {
    type: sum
    sql: ${splost_v_amount} ;;
    value_format_name: usd_0
  }
  measure: total_delta_grant{
    type: sum
    sql: ${delta_grant} ;;
    value_format_name: usd_0
  }

  measure: avgrevenuebymonth {
    type: average
    sql: ${TABLE}.Splost_V_Amount ;;
    value_format_name: usd_0
  }
}
