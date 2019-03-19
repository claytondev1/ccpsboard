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

  dimension: date__received {
    type: string
    sql: ${TABLE}.Date__Received ;;
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

  dimension: month_earned {
    type: string
    sql: ${TABLE}.Month_Earned ;;
  }

  dimension: revenue_id {
    type: number
    sql: ${TABLE}.RevenueID ;;
  }

  dimension: splost_v_amount {
    type: number
    sql: ${TABLE}.Splost_V_Amount ;;
  }

  dimension: year_earned {
    type: number
    sql: ${TABLE}.Year_Earned ;;
  }

  dimension: year_received {
    type: number
    sql: ${TABLE}.Year_Received ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: revenuebymonth {
    type: sum
    sql: ${splost_v_amount} ;;
  }
}
