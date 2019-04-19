view: enrollmentboard {
 sql_table_name: dbo.enrollment ;;

  dimension: roll_forward_enrollment_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.rollForwardEnrollmentID ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }

  dimension: ada_override {
    type: number
    sql: ${TABLE}.adaOverride ;;
  }

  dimension: adm_override {
    type: number
    sql: ${TABLE}.admOverride ;;
  }

  dimension: adult {
    type: string
    sql: ${TABLE}.adult ;;
  }

  dimension: attendance_group {
    type: string
    sql: ${TABLE}.attendanceGroup ;;
  }

  dimension: calendar_id {
    type: number
    sql: ${TABLE}.calendarID ;;
  }

  dimension: child_count_status {
    type: string
    sql: ${TABLE}.childCountStatus ;;
  }

  dimension: citizenship {
    type: string
    sql: ${TABLE}.citizenship ;;
  }

  dimension: class_rank_exclude {
    type: string
    sql: ${TABLE}.classRankExclude ;;
  }

  dimension: cohort_year {
    type: string
    sql: ${TABLE}.cohortYear ;;
  }

  dimension: diploma_date {
    type: string
    sql: ${TABLE}.diplomaDate ;;
  }

  dimension: diploma_period {
    type: string
    sql: ${TABLE}.diplomaPeriod ;;
  }

  dimension: diploma_type {
    type: string
    sql: ${TABLE}.diplomaType ;;
  }

  dimension: disability1 {
    type: string
    sql: ${TABLE}.disability1 ;;
  }

  dimension: disability10 {
    type: string
    sql: ${TABLE}.disability10 ;;
  }

  dimension: disability2 {
    type: string
    sql: ${TABLE}.disability2 ;;
  }

  dimension: disability3 {
    type: string
    sql: ${TABLE}.disability3 ;;
  }

  dimension: disability4 {
    type: string
    sql: ${TABLE}.disability4 ;;
  }

  dimension: disability5 {
    type: string
    sql: ${TABLE}.disability5 ;;
  }

  dimension: disability6 {
    type: string
    sql: ${TABLE}.disability6 ;;
  }

  dimension: disability7 {
    type: string
    sql: ${TABLE}.disability7 ;;
  }

  dimension: disability8 {
    type: string
    sql: ${TABLE}.disability8 ;;
  }

  dimension: disability9 {
    type: string
    sql: ${TABLE}.disability9 ;;
  }

  dimension: displaced_homemaker {
    type: string
    sql: ${TABLE}.displacedHomemaker ;;
  }

  dimension: district_entry_date {
    type: string
    sql: ${TABLE}.districtEntryDate ;;
  }

  dimension: district_id {
    type: number
    sql: ${TABLE}.districtID ;;
  }

  dimension: dropout_code {
    type: string
    sql: ${TABLE}.dropoutCode ;;
  }

  dimension: eip {
    type: string
    sql: ${TABLE}.eip ;;
  }

  dimension: end_action {
    type: string
    sql: ${TABLE}.endAction ;;
  }

  dimension: end_comments {
    type: string
    sql: ${TABLE}.endComments ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.endDate ;;
  }

  dimension: end_status {
    type: string
    sql: ${TABLE}.endStatus ;;
  }

  dimension: end_year {
    type: number
    sql: ${TABLE}.endYear ;;
  }

  dimension: english_proficiency {
    type: string
    sql: ${TABLE}.englishProficiency ;;
  }

  dimension: english_proficiency_date {
    type: string
    sql: ${TABLE}.englishProficiencyDate ;;
  }

  dimension: enrollment_guid {
    type: string
    sql: ${TABLE}.enrollmentGUID ;;
  }

  dimension: enrollment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.enrollmentID ;;
  }

  dimension: esl {
    type: string
    sql: ${TABLE}.esl ;;
  }

  dimension: external_lmsexclude {
    type: string
    sql: ${TABLE}.externalLMSExclude ;;
  }

  dimension: facility_code {
    type: string
    sql: ${TABLE}.facilityCode ;;
  }

  dimension: gifted_talented {
    type: string
    sql: ${TABLE}.giftedTalented ;;
  }

  dimension: grad_year {
    type: number
    sql: ${TABLE}.gradYear ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}.grade ;;
  }

  dimension: grade9_date {
    type: string
    sql: ${TABLE}.grade9Date ;;
  }

  dimension: home_schooled {
    type: string
    sql: ${TABLE}.homeSchooled ;;
  }

  dimension: homebound {
    type: string
    sql: ${TABLE}.homebound ;;
  }

  dimension: homeless {
    type: string
    sql: ${TABLE}.homeless ;;
  }

  dimension: immigrant {
    type: string
    sql: ${TABLE}.immigrant ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: legacy_key {
    type: string
    sql: ${TABLE}.legacyKey ;;
  }

  dimension: legacy_seq1 {
    type: number
    sql: ${TABLE}.legacySeq1 ;;
  }

  dimension: legacy_seq2 {
    type: number
    sql: ${TABLE}.legacySeq2 ;;
  }

  dimension: lep {
    type: string
    sql: ${TABLE}.lep ;;
  }

  dimension: local_student_number {
    type: string
    sql: ${TABLE}.localStudentNumber ;;
  }

  dimension: meal_status {
    type: string
    sql: ${TABLE}.mealStatus ;;
  }

  dimension: migrant {
    type: string
    sql: ${TABLE}.migrant ;;
  }

  dimension: modified_by_id {
    type: number
    sql: ${TABLE}.modifiedByID ;;
  }

  dimension: modified_date {
    type: string
    sql: ${TABLE}.modifiedDate ;;
  }

  dimension: mv_unaccompanied_youth {
    type: string
    sql: ${TABLE}.mvUnaccompaniedYouth ;;
  }

  dimension: nclb_choice {
    type: string
    sql: ${TABLE}.nclbChoice ;;
  }

  dimension: next_calendar {
    type: number
    sql: ${TABLE}.nextCalendar ;;
  }

  dimension: next_grade {
    type: string
    sql: ${TABLE}.nextGrade ;;
  }

  dimension: next_structure_id {
    type: number
    sql: ${TABLE}.nextStructureID ;;
  }

  dimension: no_show {
    type: string
    sql: ${TABLE}.noShow ;;
  }

  dimension: percent_enrolled {
    type: number
    sql: ${TABLE}.percentEnrolled ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.personID ;;
  }

  dimension: post_grad_location {
    type: string
    sql: ${TABLE}.postGradLocation ;;
  }

  dimension: post_grad_plans {
    type: string
    sql: ${TABLE}.postGradPlans ;;
  }

  dimension: private_schooled {
    type: string
    sql: ${TABLE}.privateSchooled ;;
  }

  dimension: projected_graduation_date {
    type: string
    sql: ${TABLE}.projectedGraduationDate ;;
  }

  dimension: pseo {
    type: string
    sql: ${TABLE}.pseo ;;
  }

  dimension: resident_district {
    type: string
    sql: ${TABLE}.residentDistrict ;;
  }

  dimension: resident_school {
    type: string
    sql: ${TABLE}.residentSchool ;;
  }

  dimension: roll_forward_code {
    type: string
    sql: ${TABLE}.rollForwardCode ;;
  }

  dimension: school_entry_date {
    type: string
    sql: ${TABLE}.schoolEntryDate ;;
  }

  dimension: school_of_accountability {
    type: number
    sql: ${TABLE}.schoolOfAccountability ;;
  }

  dimension: section504 {
    type: string
    sql: ${TABLE}.section504 ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}.serviceType ;;
  }

  dimension: serving_county {
    type: string
    sql: ${TABLE}.servingCounty ;;
  }

  dimension: serving_district {
    type: string
    sql: ${TABLE}.servingDistrict ;;
  }

  dimension: single_parent {
    type: string
    sql: ${TABLE}.singleParent ;;
  }

  dimension: special_ed_setting {
    type: string
    sql: ${TABLE}.specialEdSetting ;;
  }

  dimension: special_ed_status {
    type: string
    sql: ${TABLE}.specialEdStatus ;;
  }

  dimension: sped_exit_date {
    type: string
    sql: ${TABLE}.spedExitDate ;;
  }

  dimension: sped_exit_reason {
    type: string
    sql: ${TABLE}.spedExitReason ;;
  }

  dimension: start_comments {
    type: string
    sql: ${TABLE}.startComments ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.startDate ;;
  }

  dimension: start_status {
    type: string
    sql: ${TABLE}.startStatus ;;
  }

  dimension: state_aid {
    type: string
    sql: ${TABLE}.stateAid ;;
  }

  dimension: state_exclude {
    type: string
    sql: ${TABLE}.stateExclude ;;
  }

  dimension: state_funding_code {
    type: string
    sql: ${TABLE}.stateFundingCode ;;
  }

  dimension: structure_id {
    type: number
    sql: ${TABLE}.structureID ;;
  }

  dimension: title1 {
    type: string
    sql: ${TABLE}.title1 ;;
  }

  dimension: title3 {
    type: string
    sql: ${TABLE}.title3 ;;
  }

  dimension: transportation {
    type: string
    sql: ${TABLE}.transportation ;;
  }

  dimension: vocational_code {
    type: string
    sql: ${TABLE}.vocationalCode ;;
  }

  dimension: withdraw_date {
    type: string
    sql: ${TABLE}.withdrawDate ;;
  }



  measure: count {
    type: count

  }

  measure: TotalEnrollment {
    type: count

  }

  set: school_count {
    fields: [school.name , count]
  }

  measure: TotalSpecialED{
    type: count

    value_format_name: id
    filters: {
      field: special_ed_status
      value: "Y"
    }

  }

  measure: TotalGifted{
    type: count

    value_format_name: id
    filters: {
      field: gifted_talented
      value: "1"
    }

  }

 }
