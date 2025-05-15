# The name of this view in Looker is "Country"
view: country {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.country` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Address Format" in Explore.

  dimension: address_format {
    type: string
    sql: ${TABLE}.address_format ;;
  }

  dimension: bar_code_reader {
    type: string
    sql: ${TABLE}.bar_code_reader ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: country_image {
    type: string
    sql: ${TABLE}.country_image ;;
  }

  dimension: country_phone_lenght {
    type: number
    sql: ${TABLE}.country_phone_lenght ;;
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

  dimension: facebook_app_id {
    type: string
    sql: ${TABLE}.facebook_app_id ;;
  }

  dimension: fee_language {
    type: string
    sql: ${TABLE}.fee_language ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: iso_code {
    type: string
    sql: ${TABLE}.iso_code ;;
  }

  dimension: iso_code_2 {
    type: string
    sql: ${TABLE}.iso_code_2 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: placeholder_document_back {
    type: string
    sql: ${TABLE}.placeholder_document_back ;;
  }

  dimension: placeholder_document_front {
    type: string
    sql: ${TABLE}.placeholder_document_front ;;
  }

  dimension: privacy_url {
    type: string
    sql: ${TABLE}.privacy_url ;;
  }

  dimension: sides_to_read {
    type: string
    sql: ${TABLE}.sides_to_read ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: terms_url {
    type: string
    sql: ${TABLE}.terms_url ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
