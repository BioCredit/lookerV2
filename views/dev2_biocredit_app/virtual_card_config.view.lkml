# The name of this view in Looker is "Virtual Card Config"
view: virtual_card_config {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.virtual_card_config` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Allied ID" in Explore.

  dimension: allied_id {
    type: number
    sql: ${TABLE}.allied_id ;;
  }

  dimension: card_hex_color {
    type: string
    sql: ${TABLE}.card_hex_color ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension: credit_line_id {
    type: number
    sql: ${TABLE}.credit_line_id ;;
  }

  dimension: customer_number {
    type: string
    sql: ${TABLE}.customer_number ;;
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

  dimension: ecommerce_client_code {
    type: string
    sql: ${TABLE}.ecommerce_client_code ;;
  }

  dimension: end_credit_button {
    type: string
    sql: ${TABLE}.end_credit_button ;;
  }

  dimension: end_credit_image {
    type: string
    sql: ${TABLE}.end_credit_image ;;
  }

  dimension: end_credit_message {
    type: string
    sql: ${TABLE}.end_credit_message ;;
  }

  dimension: end_credit_titla {
    type: string
    sql: ${TABLE}.end_credit_titla ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
  }
}
