# The name of this view in Looker is "Credibanco Qr Transactions"
view: credibanco_qr_transactions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.credibanco_qr_transactions` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Datastream Metadata Source Timestamp" in Explore.

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

  dimension: full_response {
    type: string
    sql: ${TABLE}.full_response ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: purpose {
    type: string
    sql: ${TABLE}.purpose ;;
  }

  dimension: qr_reading {
    type: string
    sql: ${TABLE}.qr_reading ;;
  }

  dimension: request {
    type: string
    sql: ${TABLE}.request ;;
  }

  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
  }

  dimension: response_code {
    type: string
    sql: ${TABLE}.response_code ;;
  }

  dimension: response_message {
    type: string
    sql: ${TABLE}.response_message ;;
  }

  dimension: response_status {
    type: string
    sql: ${TABLE}.response_status ;;
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
  }
}
