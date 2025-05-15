# The name of this view in Looker is "Tecnocoop Risk Central"
view: tecnocoop_risk_central {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.tecnocoop_risk_central` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Age Range" in Explore.

  dimension: age_range {
    type: string
    sql: ${TABLE}.age_range ;;
  }

  dimension: ciiu {
    type: string
    sql: ${TABLE}.ciiu ;;
  }

  dimension: ciiu_name {
    type: string
    sql: ${TABLE}.ciiu_name ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension: credit_id {
    type: number
    sql: ${TABLE}.credit_id ;;
  }

  dimension: datastream_metadata__source_timestamp {
    type: number
    sql: ${TABLE}.datastream_metadata.source_timestamp ;;
    group_label: "Datastream Metadata"
    group_item_label: "Source Timestamp"
  }

  dimension: datastream_metadata__uuid {
    type: string
    sql: ${TABLE}.datastream_metadata.uuid ;;
    group_label: "Datastream Metadata"
    group_item_label: "Uuid"
  }

  dimension: document_id {
    type: string
    sql: ${TABLE}.document_id ;;
  }

  dimension: document_status {
    type: string
    sql: ${TABLE}.document_status ;;
  }

  dimension: document_type {
    type: string
    sql: ${TABLE}.document_type ;;
  }

  dimension: expedition_date {
    type: string
    sql: ${TABLE}.expedition_date ;;
  }

  dimension: expedition_place {
    type: string
    sql: ${TABLE}.expedition_place ;;
  }

  dimension: first_last_name {
    type: string
    sql: ${TABLE}.first_last_name ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: messages {
    type: string
    sql: ${TABLE}.messages ;;
  }

  dimension: number_report {
    type: string
    sql: ${TABLE}.number_report ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: second_last_name {
    type: string
    sql: ${TABLE}.second_last_name ;;
  }

  dimension: second_name {
    type: string
    sql: ${TABLE}.second_name ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [first_last_name, ciiu_name, second_name, first_name, second_last_name]
  }
}
