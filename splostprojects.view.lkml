view: splostprojects {
  sql_table_name: dbo.SPLOSTProjects ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: _of_approved_change_orders {
    type: number
    sql: ${TABLE}."#_of_Approved_Change_Orders" ;;
  }

  dimension: _of_payments {
    type: number

    sql:  ${TABLE}."%_of_Payments";;
    value_format: "0.00%"
  }

  dimension: adjusted_contract_price {
    type: number
    sql: ${TABLE}.Adjusted_Contract_Price ;;
    value_format_name:  usd
  }

  dimension: architech_ {
    type: string
    sql: ${TABLE}.Architech_ ;;
  }

  dimension: architech_address {
    type: string
    sql: ${TABLE}.Architech_Address ;;
  }

  dimension: architech_city {
    type: string
    sql: ${TABLE}.Architech_City ;;
  }

  dimension: architech_phone {
    type: string
    sql: ${TABLE}.Architech_Phone ;;
  }

  dimension: architech_state {
    type: string
    sql: ${TABLE}.Architech_State ;;
  }

  dimension: architech_zipcode {
    type: number
    sql: ${TABLE}.Architech_Zipcode ;;
  }

  dimension_group: comp {
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
    sql: ${TABLE}."Comp#_Date" ;;
  }

  dimension: contract_price {
    type: number

    sql: ${TABLE}.Contract_Price ;;
    value_format_name:  usd
  }

  dimension: contractor_ {
    type: string
    sql: ${TABLE}.Contractor_ ;;
  }

  dimension: contractor_address {
    type: string
    sql: ${TABLE}.Contractor_Address ;;
  }

  dimension: contractor_city {
    type: string
    sql: ${TABLE}.Contractor_City ;;
  }

  dimension: contractor_phone {
    type: string
    sql: ${TABLE}.Contractor_Phone ;;
  }

  dimension: contractor_state {
    type: string
    sql: ${TABLE}.Contractor_State ;;
  }

  dimension: contractor_zipcode {
    type: number
    sql: ${TABLE}.Contractor_Zipcode ;;
  }

  dimension: funding_source {
    type: string
    sql: ${TABLE}.Funding_Source ;;
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

  dimension: project {
    type: string
    sql: ${TABLE}.Project ;;
  }

  dimension: scope_of_work {
    type: string
    sql: ${TABLE}.Scope_of_Work ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.Start_Date ;;
  }

  dimension: total_amount_of_payments {
    type: number
    sql: ${TABLE}.Total_Amount_of_Payments ;;
    value_format_name:  usd
  }

  measure: count {
    type: count

  }

  measure: tcontractprice {
    type: sum
    sql: ${TABLE}.Contract_Price ;;
    label: "Contract Price"
    value_format_name:  usd
    drill_fields: [splostdetail*]
  }

  measure: tadjusted_contract_price {
    type: sum
    sql: ${TABLE}.Adjusted_Contract_Price ;;
    label: "Adjusted Contract Price"
    value_format_name:  usd
    drill_fields: [splostdetail*]
  }

  measure: ttotal_amount_of_payments {
    type: sum
    sql: ${TABLE}.Total_Amount_of_Payments ;;
    label: "Total Amount Of Payments"
    value_format_name:  usd
    drill_fields: [splostdetail*]
  }

  set: splostdetail  {

    fields: [
      project
      , scope_of_work
      ,contractor_
      ,start_date
      ,comp_date
      ,_of_approved_change_orders
      ,funding_source
      ,_of_payments
      ,tcontractprice
      ,tadjusted_contract_price
      ,ttotal_amount_of_payments

    ]
  }

}
