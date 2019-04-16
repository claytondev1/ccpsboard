view: splostprojects_in_design {
  sql_table_name: dbo.SPLOSTProjectsInDesign ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: architech {
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

  dimension: contract_price {
    type: number
    sql: ${TABLE}.Contract_Price ;;
  }

  dimension: contractor {
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

  dimension: estimated_completion_date {
    type: string
    sql: ${TABLE}.Estimated_Completion_Date ;;
  }

  dimension: estimated_contract_value {
    type: number
    sql: isnull(${TABLE}.Estimated_Contract_Value,0) ;;
  }

  dimension: estimated_start_date {
    type: string
    sql: ${TABLE}.Estimated_Start_Date ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure:  total_estimated_contact_value {
    type: sum
    sql: ${estimated_contract_value} ;;
    drill_fields: [indesign*]

  }
  set: indesign {
    fields: [
      project
      ,scope_of_work
      ,contractor
      ,architech
      ,estimated_start_date
      ,estimated_completion_date
      ,funding_source
      ,total_estimated_contact_value

    ]

  }
}
