# The name of this view in Looker is "Credit Line Description"
view: credit_line_description {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.credit_line_description` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Corporate Image URL" in Explore.

  dimension: corporate_image_url {
    type: string
    sql: ${TABLE}.corporate_image_url ;;
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

  dimension: fee_label {
    type: string
    sql: ${TABLE}.fee_label ;;
  }

  dimension: fee_name {
    type: string
    sql: ${TABLE}.fee_name ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: language_id {
    type: number
    sql: ${TABLE}.language_id ;;
  }

  dimension: line_copy {
    type: string
    sql: ${TABLE}.line_copy ;;
  }

  dimension: line_image_url {
    type: string
    sql: ${TABLE}.line_image_url ;;
  }

  dimension: line_name {
    type: string
    sql: ${TABLE}.line_name ;;
  }

  dimension: suffix_rate {
    type: string
    sql: ${TABLE}.suffix_rate ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [fee_name, line_name]
  }
}
