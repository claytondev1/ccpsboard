view: individual {
  sql_table_name: dbo.Individual ;;

  dimension: additional_id {
    type: string
    sql: ${TABLE}.additionalID ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  dimension: birth_date {
    type: date
    sql: CAST(${TABLE}.birthdate as DATE) ;;
  }

  dimension: age {
    type: number
    sql: DATEDIFF(year, ${birth_date}, GETDATE()) ;;
  }

  dimension: age_tier {
    type: tier
    tiers: [0, 5, 10, 15, 18, 20]
    style: integer
  }

  measure: average_age {
    type: average
    sql: ${age} ;;
    value_format_name: decimal_0
  }

  dimension: district_id {
    type: number
    sql: ${TABLE}.districtID ;;
  }

  dimension: ed_fi_id {
    type: string
    sql: ${TABLE}.edFiID ;;
  }

  dimension: effective_date {
    type: string
    sql: ${TABLE}.effectiveDate ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension: gender {
    type: string
    sql: case when ${TABLE}.gender = 'M'
         then 'Male'
         when ${TABLE}.gender = 'F'
         then 'Female'
    end
    ;;
  }

  dimension: geographic_staff_state_id {
    type: string
    sql: ${TABLE}.geographicStaffStateID ;;
  }

  dimension: home_primary_language {
    type: string
    sql: ${TABLE}.homePrimaryLanguage ;;
  }

  dimension: identity_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.identityID ;;
  }

  dimension: language_alt {
    type: string
    sql: ${TABLE}.languageAlt ;;
  }

  dimension: language_alt2 {
    type: string
    sql: ${TABLE}.languageAlt2 ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: legal_first_name {
    type: string
    sql: ${TABLE}.legalFirstName ;;
  }

  dimension: legal_gender {
    type: string
    sql: ${TABLE}.legalGender ;;
  }

  dimension: legal_last_name {
    type: string
    sql: ${TABLE}.legalLastName ;;
  }

  dimension: legal_middle_name {
    type: string
    sql: ${TABLE}.legalMiddleName ;;
  }

  dimension: legal_full_name {
    type: string
    sql: concat(${legal_first_name}, ' ', ${legal_middle_name}, ' ', ${legal_last_name} ) ;;
  }

  dimension: legal_suffix {
    type: string
    sql: ${TABLE}.legalSuffix ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middleName ;;
  }

  dimension: other_id {
    type: string
    sql: ${TABLE}.otherID ;;
  }

  dimension: person_guid {
    type: string
    sql: ${TABLE}.personGUID ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.personID ;;
  }

  dimension: race_ethnicity  {
    type: string
    sql: case when ${TABLE}.raceEthnicity = 'B'
              then 'Black'
              when ${TABLE}.raceEthnicity = 'W'
              then 'White'
          when ${TABLE}.raceEthnicity = 'A'
              then 'Asian'
              when ${TABLE}.raceEthnicity = 'H'
              then 'Hispanic'
        when ${TABLE}.raceEthnicity = 'I'
              then 'American Indian'

        when ${TABLE}.raceEthnicity = 'M'
              then 'Multi-race'
               when ${TABLE}.raceEthnicity = 'P'
              then 'Pacific Island'
              else 'Other'
    end
    ;;

    }

    dimension: ssn {
      type: string
      sql: ${TABLE}.ssn ;;
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

    dimension: suffix {
      type: string
      sql: ${TABLE}.suffix ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

    # ----- Sets of fields for drilling ------
    set: detail {
      fields: [
        last_name,
        first_name,
        middle_name,
        legal_first_name,
        legal_last_name,
        legal_middle_name
      ]
    }
  }
