# The name of this view in Looker is "Allieds"
view: allieds {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.allieds` ;;

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

  dimension: hidden {
    type: string
    sql: ${TABLE}.hidden ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: row_status {
    type: number
    sql: ${TABLE}.row_status ;;
  }

  dimension: sort {
    type: number
    sql: ${TABLE}.sort ;;
  }

  dimension: specific_qr_hash {
    type: string
    sql: ${TABLE}.specific_qr_hash ;;
  }

  dimension: specific_qr_table {
    type: string
    sql: ${TABLE}.specific_qr_table ;;
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

  dimension: with_products {
    type: string
    sql: ${TABLE}.with_products ;;
  }
  measure: count {
    type: count
  }
}
