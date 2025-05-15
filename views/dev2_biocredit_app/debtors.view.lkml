# The name of this view in Looker is "Debtors"
view: debtors {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.debtors` ;;

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

  dimension: document_id {
    type: string
    sql: ${TABLE}.document_id ;;
  }

  dimension: download {
    type: number
    sql: ${TABLE}.download ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: length {
    type: string
    sql: ${TABLE}.length ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: shorter_url {
    type: string
    sql: ${TABLE}.shorter_url ;;
  }

  dimension: track_hash {
    type: string
    sql: ${TABLE}.track_hash ;;
  }

  dimension: track_url {
    type: string
    sql: ${TABLE}.track_url ;;
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
  measure: count {
    type: count
    drill_fields: [name]
  }
}
