# The name of this view in Looker is "Push Notifications"
view: push_notifications {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.push_notifications` ;;

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

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: interval_minutes {
    type: number
    sql: ${TABLE}.interval_minutes ;;
  }

  dimension: interval_string {
    type: string
    sql: ${TABLE}.interval_string ;;
  }

  dimension: level {
    type: number
    sql: ${TABLE}.level ;;
  }

  dimension: push_message {
    type: string
    sql: ${TABLE}.push_message ;;
  }

  dimension: repeat {
    type: number
    sql: ${TABLE}.repeat ;;
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
