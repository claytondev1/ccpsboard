view: course {
  sql_table_name: dbo.course ;;

  dimension: sced_course_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.scedCourseId ;;
  }

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.abbreviation ;;
  }

  dimension: accelerated_course {
    type: string
    sql: ${TABLE}.acceleratedCourse ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }

  dimension: activity_code {
    type: string
    sql: ${TABLE}.activityCode ;;
  }

  dimension: allow_teacher_requests {
    type: string
    sql: ${TABLE}.allowTeacherRequests ;;
  }

  dimension: alt_state_code {
    type: string
    sql: ${TABLE}.altStateCode ;;
  }

  dimension: attendance {
    type: string
    sql: ${TABLE}.attendance ;;
  }

  dimension: bonus_points_avail {
    type: string
    sql: ${TABLE}.bonusPointsAvail ;;
  }

  dimension: calendar_id {
    type: number
    sql: ${TABLE}.calendarID ;;
  }

  dimension: cip_code {
    type: string
    sql: ${TABLE}.cipCode ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: composites_push_time_stamp {
    type: string
    sql: ${TABLE}.compositesPushTimeStamp ;;
  }

  dimension: content_standard {
    type: string
    sql: ${TABLE}.contentStandard ;;
  }

  dimension: core_subject {
    type: string
    sql: ${TABLE}.coreSubject ;;
  }

  dimension: course_certification_description {
    type: string
    sql: ${TABLE}.courseCertificationDescription ;;
  }

  dimension: course_guid {
    type: string
    sql: ${TABLE}.CourseGUID ;;
  }

  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.courseID ;;
  }

  dimension: course_master_id {
    type: number
    sql: ${TABLE}.courseMasterID ;;
  }

  dimension: course_only_curriculum {
    type: string
    sql: ${TABLE}.courseOnlyCurriculum ;;
  }

  dimension: course_part {
    type: string
    sql: ${TABLE}.coursePart ;;
  }

  dimension: credit_type {
    type: string
    sql: ${TABLE}.creditType ;;
  }

  dimension: cte_special_population {
    type: string
    sql: ${TABLE}.cteSpecialPopulation ;;
  }

  dimension: department_id {
    type: number
    sql: ${TABLE}.departmentID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: distance_code {
    type: string
    sql: ${TABLE}.distanceCode ;;
  }

  dimension: dual_enrollment_course {
    type: string
    sql: ${TABLE}.dualEnrollmentCourse ;;
  }

  dimension: ed_fi_term_type {
    type: string
    sql: ${TABLE}.edFiTermType ;;
  }

  dimension: embedded_course_number {
    type: string
    sql: ${TABLE}.embeddedCourseNumber ;;
  }

  dimension: end_of_course_requirement {
    type: string
    sql: ${TABLE}.endOfCourseRequirement ;;
  }

  dimension: enrollment_location {
    type: string
    sql: ${TABLE}.enrollmentLocation ;;
  }

  dimension: expected_hours {
    type: number
    sql: ${TABLE}.expectedHours ;;
  }

  dimension: external_lmsexclude {
    type: string
    sql: ${TABLE}.externalLMSExclude ;;
  }

  dimension: gpa_weight {
    type: number
    sql: ${TABLE}.gpaWeight ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}.grade ;;
  }

  dimension: grade_calc_push_time_stamp {
    type: string
    sql: ${TABLE}.gradeCalcPushTimeStamp ;;
  }

  dimension: hide_standards_on_portal {
    type: string
    sql: ${TABLE}.hideStandardsOnPortal ;;
  }

  dimension: highly_qualified {
    type: string
    sql: ${TABLE}.highlyQualified ;;
  }

  dimension: homeroom {
    type: string
    sql: ${TABLE}.homeroom ;;
  }

  dimension: honors_code {
    type: string
    sql: ${TABLE}.honorsCode ;;
  }

  dimension: honors_course {
    type: string
    sql: ${TABLE}.honorsCourse ;;
  }

  dimension: instructional_time {
    type: number
    sql: ${TABLE}.instructionalTime ;;
  }

  dimension: legacy_key {
    type: number
    sql: ${TABLE}.legacyKey ;;
  }

  dimension: legacy_key_sc {
    type: number
    sql: ${TABLE}.legacyKeySC ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}.level ;;
  }

  dimension: lock {
    type: string
    sql: ${TABLE}.lock ;;
  }

  dimension: max_students {
    type: number
    sql: ${TABLE}.maxStudents ;;
  }

  dimension: modified_by_id {
    type: number
    sql: ${TABLE}.modifiedByID ;;
  }

  dimension: modified_date {
    type: string
    sql: ${TABLE}.modifiedDate ;;
  }

  dimension: msix_code {
    type: string
    sql: ${TABLE}.msixCode ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: no_autobuild {
    type: string
    sql: ${TABLE}.noAutobuild ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}.number ;;
  }

  dimension: periods {
    type: number
    sql: ${TABLE}.periods ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: program {
    type: string
    sql: ${TABLE}.program ;;
  }

  dimension: program_type {
    type: string
    sql: ${TABLE}.programType ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }

  dimension: pseo_credit {
    type: number
    sql: ${TABLE}.pseoCredit ;;
  }

  dimension: pseo_type {
    type: string
    sql: ${TABLE}.pseoType ;;
  }

  dimension: repeatable {
    type: string
    sql: ${TABLE}.repeatable ;;
  }

  dimension: requestable {
    type: string
    sql: ${TABLE}.requestable ;;
  }

  dimension: required {
    type: string
    sql: ${TABLE}.required ;;
  }

  dimension: responsive {
    type: string
    sql: ${TABLE}.responsive ;;
  }

  dimension: sced_available_credit {
    type: number
    sql: ${TABLE}.scedAvailableCredit ;;
  }

  dimension: sced_course_level {
    type: string
    sql: ${TABLE}.scedCourseLevel ;;
  }

  dimension: sced_highest_grade {
    type: string
    sql: ${TABLE}.scedHighestGrade ;;
  }

  dimension: sced_lowest_grade {
    type: string
    sql: ${TABLE}.scedLowestGrade ;;
  }

  dimension: sced_sequence_max {
    type: string
    sql: ${TABLE}.scedSequenceMax ;;
  }

  dimension: sced_sequence_num {
    type: string
    sql: ${TABLE}.scedSequenceNum ;;
  }

  dimension: sced_subject_area {
    type: string
    sql: ${TABLE}.scedSubjectArea ;;
  }

  dimension: schedules {
    type: number
    sql: ${TABLE}.schedules ;;
  }

  dimension: secondary_credit {
    type: string
    sql: ${TABLE}.secondaryCredit ;;
  }

  dimension: sections_to_build {
    type: number
    sql: ${TABLE}.sectionsToBuild ;;
  }

  dimension: special_code {
    type: string
    sql: ${TABLE}.specialCode ;;
  }

  dimension: special_ed_code {
    type: string
    sql: ${TABLE}.specialEdCode ;;
  }

  dimension: sped_area {
    type: string
    sql: ${TABLE}.spedArea ;;
  }

  dimension: standards_based {
    type: string
    sql: ${TABLE}.standardsBased ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.stateCode ;;
  }

  dimension: state_grade_level_high {
    type: string
    sql: ${TABLE}.stateGradeLevelHigh ;;
  }

  dimension: state_grade_level_low {
    type: string
    sql: ${TABLE}.stateGradeLevelLow ;;
  }

  dimension: state_report_exclude {
    type: string
    sql: ${TABLE}.stateReportExclude ;;
  }

  dimension: subject_area {
    type: string
    sql: ${TABLE}.subjectArea ;;
  }

  dimension: subject_type {
    type: string
    sql: ${TABLE}.subjectType ;;
  }

  dimension: substitute_credit {
    type: string
    sql: ${TABLE}.substituteCredit ;;
  }

  dimension: teaching_method {
    type: string
    sql: ${TABLE}.teachingMethod ;;
  }

  dimension: technology {
    type: string
    sql: ${TABLE}.technology ;;
  }

  dimension: template_group_id {
    type: number
    sql: ${TABLE}.templateGroupID ;;
  }

  dimension: term_type {
    type: string
    sql: ${TABLE}.termType ;;
  }

  dimension: terms {
    type: number
    sql: ${TABLE}.terms ;;
  }

  dimension: transcript {
    type: string
    sql: ${TABLE}.transcript ;;
  }

  dimension: transcript_field1 {
    type: string
    sql: ${TABLE}.transcriptField1 ;;
  }

  dimension: transcript_field2 {
    type: string
    sql: ${TABLE}.transcriptField2 ;;
  }

  dimension: transcript_field3 {
    type: string
    sql: ${TABLE}.transcriptField3 ;;
  }

  dimension: transcript_field4 {
    type: string
    sql: ${TABLE}.transcriptField4 ;;
  }

  dimension: transcript_field5 {
    type: string
    sql: ${TABLE}.transcriptField5 ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: unit_attendance {
    type: string
    sql: ${TABLE}.unitAttendance ;;
  }

  dimension: vocational_code {
    type: string
    sql: ${TABLE}.vocationalCode ;;
  }

  dimension: wbl_course_type {
    type: string
    sql: ${TABLE}.wblCourseType ;;
  }

  measure: count {
    type: count
    drill_fields: [sced_course_id, name, course.name, course.sced_course_id, course.count]
  }
}
