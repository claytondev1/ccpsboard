view: school {
  sql_table_name: dbo.school ;;

  dimension: reporting_school_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.reportingSchoolID ;;
  }

  dimension: accreditation {
    type: string
    sql: ${TABLE}.accreditation ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: agency {
    type: string
    sql: ${TABLE}.agency ;;
  }

  dimension: agency_bie {
    type: string
    sql: ${TABLE}.agencyBIE ;;
  }

  dimension: ayp_grouping {
    type: string
    sql: ${TABLE}.aypGrouping ;;
  }

  dimension: ayp_status {
    type: string
    sql: ${TABLE}.aypStatus ;;
  }

  dimension: blue_ribbon {
    type: string
    sql: ${TABLE}.blueRibbon ;;
  }

  dimension: catalog_id {
    type: number
    sql: ${TABLE}.catalogID ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: district_id {
    type: number
    sql: ${TABLE}.districtID ;;
  }

  dimension: dual_enrollment {
    type: string
    sql: ${TABLE}.dualEnrollment ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: entity_id {
    type: string
    sql: ${TABLE}.entityID ;;
  }

  dimension: exclude {
    type: string
    sql: ${TABLE}.exclude ;;
  }

  dimension: external_lmsexclude {
    type: string
    sql: ${TABLE}.externalLMSExclude ;;
  }

  dimension: f_ryscservice_center_code {
    type: string
    sql: ${TABLE}.fRYSCServiceCenterCode ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension: grade_type {
    type: string
    sql: ${TABLE}.gradeType ;;
  }

  dimension: group_number {
    type: string
    sql: ${TABLE}.groupNumber ;;
  }

  dimension: legacy_key_number {
    type: string
    sql: ${TABLE}.legacyKeyNumber ;;
  }

  dimension: legacy_key_school_code {
    type: number
    sql: ${TABLE}.legacyKeySchoolCode ;;
  }

  dimension: legacy_key_state_school_num {
    type: string
    sql: ${TABLE}.legacyKeyStateSchoolNum ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: locale2 {
    type: string
    sql: ${TABLE}.locale2 ;;
  }

  dimension: modified_by_id {
    type: number
    sql: ${TABLE}.modifiedByID ;;
  }

  dimension: modified_date {
    type: string
    sql: ${TABLE}.modifiedDate ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
    label: "School Name"
  }

  dimension: nces_school_id {
    type: string
    sql: ${TABLE}.ncesSchoolID ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}.number ;;
  }

  dimension: other_email {
    type: string
    sql: ${TABLE}.otherEmail ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: physical_address {
    type: string
    sql: ${TABLE}.physicalAddress ;;
  }

  dimension: physical_city {
    type: string
    sql: ${TABLE}.physicalCity ;;
  }

  dimension: physical_state {
    type: string
    sql: ${TABLE}.physicalState ;;
  }

  dimension: physical_zip {
    type: string
    sql: ${TABLE}.physicalZip ;;
    map_layer_name: us_zipcode_tabulation_areas
  }

  dimension: principal_email {
    type: string
    sql: ${TABLE}.principalEmail ;;
  }

  dimension: principal_name {
    type: string
    sql: ${TABLE}.principalName ;;
  }

  dimension: principal_title {
    type: string
    sql: ${TABLE}.principalTitle ;;
  }

  dimension: provider_number {
    type: string
    sql: ${TABLE}.providerNumber ;;
  }

  dimension: restructure_end_date {
    type: string
    sql: ${TABLE}.restructureEndDate ;;
  }

  dimension: restructure_start_date {
    type: string
    sql: ${TABLE}.restructureStartDate ;;
  }

  dimension: sat_number {
    type: string
    sql: ${TABLE}.satNumber ;;
  }

  dimension: school_guid {
    type: string
    sql: ${TABLE}.schoolGUID ;;
  }

  dimension: school_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.schoolID ;;
  }

  dimension: school_level {
    type: string
    sql: ${TABLE}.schoolLevel ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}.sector ;;
  }

  dimension: session_type {
    type: string
    sql: ${TABLE}.sessionType ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.size ;;
  }

  dimension: standard_code {
    type: string
    sql: ${TABLE}.standardCode ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: state_classification {
    type: string
    sql: ${TABLE}.stateClassification ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: title1 {
    type: string
    sql: ${TABLE}.title1 ;;
  }

  dimension: title1distinguished {
    type: string
    sql: ${TABLE}.title1distinguished ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: type_bie {
    type: string
    sql: ${TABLE}.typeBIE ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
    map_layer_name: us_zipcode_tabulation_areas
    # drill_fields: [name]
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      reporting_school_id,
      name,
      principal_name,
      school.name,
      school.principal_name,
      school.reporting_school_id,
      school.count
    ]
  }
}
