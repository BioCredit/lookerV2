# The name of this view in Looker is "Bancolombia User Loan"
view: bancolombia_user_loan {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.bancolombia_user_loan` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Arreas" in Explore.

  dimension: arreas {
    type: number
    sql: ${TABLE}.arreas ;;
  }

  dimension: call_back_response {
    type: string
    sql: ${TABLE}.call_back_response ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension: customer_accepted_terms {
    type: string
    sql: ${TABLE}.customer_accepted_terms ;;
  }

  dimension: customer_validate_key {
    type: string
    sql: ${TABLE}.customer_validate_key ;;
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

  dimension: deposit_account {
    type: string
    sql: ${TABLE}.deposit_account ;;
  }

  dimension: documents_terms {
    type: string
    sql: ${TABLE}.documents_terms ;;
  }

  dimension: effective_annual {
    type: number
    sql: ${TABLE}.effective_annual ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: installment {
    type: number
    sql: ${TABLE}.installment ;;
  }

  dimension: insurances_amount {
    type: number
    sql: ${TABLE}.insurances_amount ;;
  }

  dimension: month_overdue {
    type: number
    sql: ${TABLE}.month_overdue ;;
  }

  dimension: nominal_annual {
    type: number
    sql: ${TABLE}.nominal_annual ;;
  }

  dimension: offer_id {
    type: string
    sql: ${TABLE}.offer_id ;;
  }

  dimension: payment_day {
    type: number
    sql: ${TABLE}.payment_day ;;
  }

  dimension: session_token {
    type: string
    sql: ${TABLE}.session_token ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: url_authenticate {
    type: string
    sql: ${TABLE}.url_authenticate ;;
  }

  dimension: url_terms {
    type: string
    sql: ${TABLE}.url_terms ;;
  }

  dimension: user_credit_id {
    type: number
    sql: ${TABLE}.user_credit_id ;;
  }
  measure: count {
    type: count
  }
}
