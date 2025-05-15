# The name of this view in Looker is "User Document Verify"
view: user_document_verify {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.user_document_verify` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Back Document Image" in Explore.

  dimension: back_document_image {
    type: string
    sql: ${TABLE}.back_document_image ;;
  }

  dimension: compare_response {
    type: string
    sql: ${TABLE}.compare_response ;;
  }

  dimension: comparison_results {
    type: string
    sql: ${TABLE}.comparison_results ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
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

  dimension: document {
    type: string
    sql: ${TABLE}.document ;;
  }

  dimension: document_face_response {
    type: string
    sql: ${TABLE}.document_face_response ;;
  }

  dimension: document_match {
    type: number
    sql: ${TABLE}.document_match ;;
  }

  dimension: face_confidence {
    type: string
    sql: ${TABLE}.face_confidence ;;
  }

  dimension: face_image {
    type: string
    sql: ${TABLE}.face_image ;;
  }

  dimension: face_is_identical {
    type: number
    value_format_name: id
    sql: ${TABLE}.face_is_identical ;;
  }

  dimension: face_response {
    type: string
    sql: ${TABLE}.face_response ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: first_name_match {
    type: number
    sql: ${TABLE}.first_name_match ;;
  }

  dimension: front_document_image {
    type: string
    sql: ${TABLE}.front_document_image ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: last_name_match {
    type: number
    sql: ${TABLE}.last_name_match ;;
  }

  dimension: second_last_name {
    type: string
    sql: ${TABLE}.second_last_name ;;
  }

  dimension: second_last_name_match {
    type: number
    sql: ${TABLE}.second_last_name_match ;;
  }

  dimension: second_name {
    type: string
    sql: ${TABLE}.second_name ;;
  }

  dimension: second_name_match {
    type: number
    sql: ${TABLE}.second_name_match ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: verification {
    type: number
    sql: ${TABLE}.verification ;;
  }

  dimension: verification_percentage {
    type: number
    sql: ${TABLE}.verification_percentage ;;
  }
  measure: count {
    type: count
    drill_fields: [first_name, second_last_name, last_name, second_name]
  }
}
