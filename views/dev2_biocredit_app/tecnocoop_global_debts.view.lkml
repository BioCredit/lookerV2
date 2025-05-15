# The name of this view in Looker is "Tecnocoop Global Debts"
view: tecnocoop_global_debts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.tecnocoop_global_debts` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Appraisal Date" in Explore.

  dimension: appraisal_date {
    type: string
    sql: ${TABLE}.appraisal_date ;;
  }

  dimension: coin_type {
    type: string
    sql: ${TABLE}.coin_type ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension: credit_mode {
    type: string
    sql: ${TABLE}.credit_mode ;;
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

  dimension: debt_value {
    type: string
    sql: ${TABLE}.debt_value ;;
  }

  dimension: entity_name {
    type: string
    sql: ${TABLE}.entity_name ;;
  }

  dimension: entity_type {
    type: string
    sql: ${TABLE}.entity_type ;;
  }

  dimension: expected_quota {
    type: string
    sql: ${TABLE}.expected_quota ;;
  }

  dimension: fideicomiso_number {
    type: string
    sql: ${TABLE}.fideicomiso_number ;;
  }

  dimension: fideicomiso_type {
    type: string
    sql: ${TABLE}.fideicomiso_type ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: operator_number {
    type: string
    sql: ${TABLE}.operator_number ;;
  }

  dimension: origin_entity_portfolio {
    type: string
    sql: ${TABLE}.origin_entity_portfolio ;;
  }

  dimension: participation_percentage {
    type: string
    sql: ${TABLE}.participation_percentage ;;
  }

  dimension: quota_compliance {
    type: string
    sql: ${TABLE}.quota_compliance ;;
  }

  dimension: score {
    type: string
    sql: ${TABLE}.score ;;
  }

  dimension: tecnocoop_risk_central_id {
    type: number
    sql: ${TABLE}.tecnocoop_risk_central_id ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: warranty_coverage {
    type: string
    sql: ${TABLE}.warranty_coverage ;;
  }

  dimension: warranty_type {
    type: string
    sql: ${TABLE}.warranty_type ;;
  }
  measure: count {
    type: count
    drill_fields: [entity_name]
  }
}
