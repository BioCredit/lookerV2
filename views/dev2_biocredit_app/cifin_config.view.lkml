# The name of this view in Looker is "Cifin Config"
view: cifin_config {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.cifin_config` ;;

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

  dimension: endpoint {
    type: string
    sql: ${TABLE}.endpoint ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: test_endpoint {
    type: string
    sql: ${TABLE}.test_endpoint ;;
  }

  dimension: test_password {
    type: string
    sql: ${TABLE}.test_password ;;
  }

  dimension: test_user {
    type: string
    sql: ${TABLE}.test_user ;;
  }

  dimension: test_user_document {
    type: string
    sql: ${TABLE}.test_user_document ;;
  }

  dimension: test_user_document_type {
    type: string
    sql: ${TABLE}.test_user_document_type ;;
  }

  dimension: test_user_name {
    type: string
    sql: ${TABLE}.test_user_name ;;
  }

  dimension: testmode {
    type: number
    sql: ${TABLE}.testmode ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }
  measure: count {
    type: count
    drill_fields: [test_user_name]
  }
}
