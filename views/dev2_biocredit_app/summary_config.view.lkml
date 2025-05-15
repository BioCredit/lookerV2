# The name of this view in Looker is "Summary Config"
view: summary_config {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.summary_config` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Allied ID" in Explore.

  dimension: allied_id {
    type: number
    sql: ${TABLE}.allied_id ;;
  }

  dimension: buttons {
    type: string
    sql: ${TABLE}.buttons ;;
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

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: step_four {
    type: string
    sql: ${TABLE}.step_four ;;
  }

  dimension: step_one {
    type: string
    sql: ${TABLE}.step_one ;;
  }

  dimension: step_three {
    type: string
    sql: ${TABLE}.step_three ;;
  }

  dimension: step_two {
    type: string
    sql: ${TABLE}.step_two ;;
  }

  dimension: type_view {
    type: string
    sql: ${TABLE}.type_view ;;
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
