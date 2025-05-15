# The name of this view in Looker is "PDF Form Field Value"
view: pdf_form_field_value {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.pdf_form_field_value` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.created_at ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Custom Field Name" in Explore.

  dimension: custom_field_name {
    type: string
    sql: ${TABLE}.custom_field_name ;;
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

  dimension: pdf_field_name {
    type: string
    sql: ${TABLE}.pdf_field_name ;;
  }

  dimension: pdf_form_companies_id {
    type: number
    sql: ${TABLE}.pdf_form_companies_id ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.updated_at ;;
  }

  dimension: value_route {
    type: string
    sql: ${TABLE}.value_route ;;
  }
  measure: count {
    type: count
    drill_fields: [pdf_field_name, custom_field_name]
  }
}
