# The name of this view in Looker is "Corporate Config"
view: corporate_config {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.corporate_config` ;;

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

  dimension: credit_line_copy {
    type: string
    sql: ${TABLE}.credit_line_copy ;;
  }

  dimension: credit_line_id {
    type: number
    sql: ${TABLE}.credit_line_id ;;
  }

  dimension: credit_line_image {
    type: string
    sql: ${TABLE}.credit_line_image ;;
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

  dimension: history_type {
    type: number
    sql: ${TABLE}.history_type ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: max_amount {
    type: number
    sql: ${TABLE}.max_amount ;;
  }

  dimension: max_quotas {
    type: number
    sql: ${TABLE}.max_quotas ;;
  }

  dimension: min_amount {
    type: number
    sql: ${TABLE}.min_amount ;;
  }

  dimension: min_quotas {
    type: number
    sql: ${TABLE}.min_quotas ;;
  }

  dimension: rate {
    type: string
    sql: ${TABLE}.rate ;;
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
