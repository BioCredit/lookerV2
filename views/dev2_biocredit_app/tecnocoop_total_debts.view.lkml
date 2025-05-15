# The name of this view in Looker is "Tecnocoop Total Debts"
view: tecnocoop_total_debts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.tecnocoop_total_debts` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Coin Type" in Explore.

  dimension: coin_type {
    type: string
    sql: ${TABLE}.coin_type ;;
  }

  dimension: commercial_debt_value {
    type: string
    sql: ${TABLE}.commercial_debt_value ;;
  }

  dimension: commercial_warranty_coverage {
    type: string
    sql: ${TABLE}.commercial_warranty_coverage ;;
  }

  dimension: consumer_debt_value {
    type: string
    sql: ${TABLE}.consumer_debt_value ;;
  }

  dimension: consumption_warranty_coverage {
    type: string
    sql: ${TABLE}.consumption_warranty_coverage ;;
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

  dimension: housing_debt_value {
    type: string
    sql: ${TABLE}.housing_debt_value ;;
  }

  dimension: housing_warranty_coverage {
    type: string
    sql: ${TABLE}.housing_warranty_coverage ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: microcredit_debt_value {
    type: string
    sql: ${TABLE}.microcredit_debt_value ;;
  }

  dimension: microcredit_warranty_coverage {
    type: string
    sql: ${TABLE}.microcredit_warranty_coverage ;;
  }

  dimension: number_commercial_consumption {
    type: string
    sql: ${TABLE}.number_commercial_consumption ;;
  }

  dimension: number_commercial_operations {
    type: string
    sql: ${TABLE}.number_commercial_operations ;;
  }

  dimension: number_housing_operations {
    type: string
    sql: ${TABLE}.number_housing_operations ;;
  }

  dimension: number_microcredit_operations {
    type: string
    sql: ${TABLE}.number_microcredit_operations ;;
  }

  dimension: quarter {
    type: number
    sql: ${TABLE}.quarter ;;
  }

  dimension: score {
    type: string
    sql: ${TABLE}.score ;;
  }

  dimension: tecnocoop_risk_central_id {
    type: number
    sql: ${TABLE}.tecnocoop_risk_central_id ;;
  }

  dimension: total {
    type: string
    sql: ${TABLE}.total ;;
  }

  dimension: total_share_debts {
    type: string
    sql: ${TABLE}.total_share_debts ;;
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
