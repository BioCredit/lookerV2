# The name of this view in Looker is "Tecnocoop Risk Analyst"
view: tecnocoop_risk_analyst {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.tecnocoop_risk_analyst` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Acierta Score" in Explore.

  dimension: acierta_score {
    type: number
    sql: ${TABLE}.acierta_score ;;
  }

  dimension: amount_due_obligations {
    type: number
    sql: ${TABLE}.amount_due_obligations ;;
  }

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

  dimension: credit_amount {
    type: number
    sql: ${TABLE}.credit_amount ;;
  }

  dimension: credit_decision {
    type: string
    sql: ${TABLE}.credit_decision ;;
  }

  dimension: credit_fee_number {
    type: number
    sql: ${TABLE}.credit_fee_number ;;
  }

  dimension: credit_fee_value {
    type: number
    sql: ${TABLE}.credit_fee_value ;;
  }

  dimension: credit_id {
    type: number
    sql: ${TABLE}.credit_id ;;
  }

  dimension: credit_rate {
    type: number
    sql: ${TABLE}.credit_rate ;;
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

  dimension: format_acierta_score {
    type: string
    sql: ${TABLE}.format_acierta_score ;;
  }

  dimension: format_amount_due_obligations {
    type: string
    sql: ${TABLE}.format_amount_due_obligations ;;
  }

  dimension: format_total_number_obligations {
    type: string
    sql: ${TABLE}.format_total_number_obligations ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: maximum_amount_lend {
    type: string
    sql: ${TABLE}.maximum_amount_lend ;;
  }

  dimension: maximum_amount_lend_decision {
    type: string
    sql: ${TABLE}.maximum_amount_lend_decision ;;
  }

  dimension: maximum_fee_number_lend {
    type: string
    sql: ${TABLE}.maximum_fee_number_lend ;;
  }

  dimension: new_fee_value {
    type: number
    sql: ${TABLE}.new_fee_value ;;
  }

  dimension: new_rate {
    type: number
    sql: ${TABLE}.new_rate ;;
  }

  dimension: query_traces_last_45_days {
    type: string
    sql: ${TABLE}.query_traces_last_45_days ;;
  }

  dimension: total_number_obligations {
    type: number
    sql: ${TABLE}.total_number_obligations ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user_age {
    type: number
    sql: ${TABLE}.user_age ;;
  }

  dimension: user_gender {
    type: string
    sql: ${TABLE}.user_gender ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_income {
    type: string
    sql: ${TABLE}.user_income ;;
  }

  dimension: user_job_type {
    type: string
    sql: ${TABLE}.user_job_type ;;
  }

  dimension: user_labor_old {
    type: string
    sql: ${TABLE}.user_labor_old ;;
  }

  dimension: user_original_income {
    type: number
    sql: ${TABLE}.user_original_income ;;
  }
  measure: count {
    type: count
  }
}
