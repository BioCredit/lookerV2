# The name of this view in Looker is "Onu Individual Entity"
view: onu_individual_entity {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.onu_individual_entity` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Comments" in Explore.

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
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

  dimension: document_id {
    type: string
    sql: ${TABLE}.document_id ;;
  }

  dimension: field_id {
    type: string
    sql: ${TABLE}.field_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: fourth_name {
    type: string
    sql: ${TABLE}.fourth_name ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: individual_place_of_birth {
    type: string
    sql: ${TABLE}.individual_place_of_birth ;;
  }

  dimension: listed_on {
    type: string
    sql: ${TABLE}.listed_on ;;
  }

  dimension: name_original_script {
    type: string
    sql: ${TABLE}.name_original_script ;;
  }

  dimension: option_list {
    type: string
    sql: ${TABLE}.option_list ;;
  }

  dimension: reference_number {
    type: string
    sql: ${TABLE}.reference_number ;;
  }

  dimension: row_status {
    type: number
    sql: ${TABLE}.row_status ;;
  }

  dimension: second_name {
    type: string
    sql: ${TABLE}.second_name ;;
  }

  dimension: third_name {
    type: string
    sql: ${TABLE}.third_name ;;
  }

  dimension: un_list_type {
    type: string
    sql: ${TABLE}.un_list_type ;;
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

  dimension: versionnum {
    type: string
    sql: ${TABLE}.versionnum ;;
  }
  measure: count {
    type: count
    drill_fields: [third_name, fourth_name, second_name, first_name]
  }
}
