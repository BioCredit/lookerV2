# The name of this view in Looker is "Custom Field Form Config New Field"
view: custom_field_form_config_new_field {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.custom_field_form_config_new_field` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Configuration" in Explore.

  dimension: configuration {
    type: string
    sql: ${TABLE}.configuration ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension: custom_field_category_id {
    type: number
    sql: ${TABLE}.custom_field_category_id ;;
  }

  dimension: custom_field_form_config_id {
    type: number
    sql: ${TABLE}.custom_field_form_config_id ;;
  }

  dimension: custom_field_id {
    type: number
    sql: ${TABLE}.custom_field_id ;;
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

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: show_app {
    type: number
    sql: ${TABLE}.show_app ;;
  }

  dimension: show_web {
    type: number
    sql: ${TABLE}.show_web ;;
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
