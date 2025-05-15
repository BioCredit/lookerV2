# The name of this view in Looker is "Twilio Verification"
view: twilio_verification {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.twilio_verification` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Account Sid" in Explore.

  dimension: account_sid {
    type: string
    sql: ${TABLE}.account_sid ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
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

  dimension: date_created {
    type: string
    sql: ${TABLE}.date_created ;;
  }

  dimension: date_updated {
    type: string
    sql: ${TABLE}.date_updated ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: payee {
    type: string
    sql: ${TABLE}.payee ;;
  }

  dimension: service_sid {
    type: string
    sql: ${TABLE}.service_sid ;;
  }

  dimension: sid {
    type: string
    sql: ${TABLE}.sid ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: to {
    type: string
    sql: ${TABLE}.`to` ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user_credit_id {
    type: number
    sql: ${TABLE}.user_credit_id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: valid {
    type: string
    sql: ${TABLE}.valid ;;
  }

  dimension: verify_view {
    type: string
    sql: ${TABLE}.verify_view ;;
  }
  measure: count {
    type: count
  }
}
