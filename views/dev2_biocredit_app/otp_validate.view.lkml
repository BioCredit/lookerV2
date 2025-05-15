# The name of this view in Looker is "Otp Validate"
view: otp_validate {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.otp_validate` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Channel" in Explore.

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: channel_id {
    type: number
    sql: ${TABLE}.channel_id ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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

  dimension_group: expires {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.expires_at ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: otp_code {
    type: string
    sql: ${TABLE}.otp_code ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: user_identifier {
    type: string
    sql: ${TABLE}.user_identifier ;;
  }

  dimension: user_request_id {
    type: number
    sql: ${TABLE}.user_request_id ;;
  }
  measure: count {
    type: count
  }
}
