# The name of this view in Looker is "Tecnocoop Config"
view: tecnocoop_config {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.tecnocoop_config` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Company ID" in Explore.

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

  dimension: credit_line_ids {
    type: string
    sql: ${TABLE}.credit_line_ids ;;
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

  dimension: executable_jar {
    type: string
    sql: ${TABLE}.executable_jar ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: information_code {
    type: number
    sql: ${TABLE}.information_code ;;
  }

  dimension: llave {
    type: string
    sql: ${TABLE}.llave ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: reason {
    type: number
    sql: ${TABLE}.reason ;;
  }

  dimension: test_data {
    type: string
    sql: ${TABLE}.test_data ;;
  }

  dimension: test_executable_jar {
    type: string
    sql: ${TABLE}.test_executable_jar ;;
  }

  dimension: test_mode {
    type: number
    sql: ${TABLE}.test_mode ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }
  measure: count {
    type: count
    drill_fields: [user_name]
  }
}
