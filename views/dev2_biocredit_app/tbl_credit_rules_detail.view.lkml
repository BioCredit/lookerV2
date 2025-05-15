# The name of this view in Looker is "Tbl Credit Rules Detail"
view: tbl_credit_rules_detail {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.tbl_credit_rules_detail` ;;

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
    # This dimension will be called "Credit Rule Entity ID" in Explore.

  dimension: credit_rule_entity_id {
    type: number
    sql: ${TABLE}.credit_rule_entity_id ;;
  }

  dimension: custom_field_ids {
    type: string
    sql: ${TABLE}.custom_field_ids ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: method {
    type: string
    sql: ${TABLE}.method ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}.operator ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}.origin ;;
  }

  dimension: row_status {
    type: number
    sql: ${TABLE}.row_status ;;
  }

  dimension: rule_config_id {
    type: number
    sql: ${TABLE}.rule_config_id ;;
  }

  dimension: sort {
    type: number
    sql: ${TABLE}.sort ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: type_rule {
    type: number
    sql: ${TABLE}.type_rule ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
  }
}
