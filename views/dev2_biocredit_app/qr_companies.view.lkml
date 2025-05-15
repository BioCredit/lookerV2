# The name of this view in Looker is "Qr Companies"
view: qr_companies {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.qr_companies` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Button2 Name" in Explore.

  dimension: button2_name {
    type: string
    sql: ${TABLE}.button2_name ;;
  }

  dimension: button2_params {
    type: string
    sql: ${TABLE}.button2_params ;;
  }

  dimension: button_name {
    type: string
    sql: ${TABLE}.button_name ;;
  }

  dimension: button_params {
    type: string
    sql: ${TABLE}.button_params ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.`hash` ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }

  dimension: row_status {
    type: number
    sql: ${TABLE}.row_status ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: terms {
    type: string
    sql: ${TABLE}.terms ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [button_name, button2_name]
  }
}
