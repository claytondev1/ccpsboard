view: person {
  sql_table_name: dbo.person ;;

  dimension: person_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.personID ;;
  }

  dimension: additional_id {
    type: string
    sql: ${TABLE}.additionalID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: current_identity_id {
    type: number
    sql: ${TABLE}.currentIdentityID ;;
  }

  dimension: ed_fi_id {
    type: string
    sql: ${TABLE}.edFiID ;;
  }

  dimension: geographic_staff_state_id {
    type: string
    sql: ${TABLE}.geographicStaffStateID ;;
  }

  dimension: legacy_key {
    type: string
    sql: ${TABLE}.legacyKey ;;
  }

  dimension: legacy_key_gnets {
    type: number
    sql: ${TABLE}.legacyKeyGNETS ;;
  }

  dimension: modified_by_id {
    type: number
    sql: ${TABLE}.modifiedByID ;;
  }

  dimension: other_id {
    type: string
    sql: ${TABLE}.otherID ;;
  }

  dimension: person_guid {
    type: string
    sql: ${TABLE}.personGUID ;;
  }

  dimension: staff_number {
    type: string
    sql: ${TABLE}.staffNumber ;;
  }

  dimension: staff_state_id {
    type: string
    sql: ${TABLE}.staffStateID ;;
  }

  dimension: state_id {
    type: string
    sql: ${TABLE}.stateID ;;
  }

  dimension: student_number {
    type: string
    sql: ${TABLE}.studentNumber ;;
  }

  measure: count {
    type: count
    drill_fields: [person_id]
  }
}
