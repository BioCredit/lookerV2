# The name of this view in Looker is "Currency"
view: currency {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.currency` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
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

  dimension: decimal_place {
    type: string
    sql: ${TABLE}.decimal_place ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: symbol_left {
    type: string
    sql: ${TABLE}.symbol_left ;;
  }

  dimension: symbol_right {
    type: string
    sql: ${TABLE}.symbol_right ;;
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

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
  }
}
