# The name of this view in Looker is "Tecnocoop Header Debts"
view: tecnocoop_header_debts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.tecnocoop_header_debts` ;;

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
    # This dimension will be called "Datastream Metadata Source Timestamp" in Explore.

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

  dimension: first_quarter_date {
    type: string
    sql: ${TABLE}.first_quarter_date ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: number_first_quarter_entities {
    type: string
    sql: ${TABLE}.number_first_quarter_entities ;;
  }

  dimension: number_penalties_first_quarter {
    type: string
    sql: ${TABLE}.number_penalties_first_quarter ;;
  }

  dimension: number_penalties_second_quarter {
    type: string
    sql: ${TABLE}.number_penalties_second_quarter ;;
  }

  dimension: number_penalties_third_quarter {
    type: string
    sql: ${TABLE}.number_penalties_third_quarter ;;
  }

  dimension: number_purchases_first_quarter {
    type: string
    sql: ${TABLE}.number_purchases_first_quarter ;;
  }

  dimension: number_purchases_second_quarter {
    type: string
    sql: ${TABLE}.number_purchases_second_quarter ;;
  }

  dimension: number_purchases_third_quarter {
    type: string
    sql: ${TABLE}.number_purchases_third_quarter ;;
  }

  dimension: number_restructurings_first_quarter {
    type: string
    sql: ${TABLE}.number_restructurings_first_quarter ;;
  }

  dimension: number_restructurings_second_quarter {
    type: string
    sql: ${TABLE}.number_restructurings_second_quarter ;;
  }

  dimension: number_restructurings_third_quarter {
    type: string
    sql: ${TABLE}.number_restructurings_third_quarter ;;
  }

  dimension: number_second_quarter_entities {
    type: string
    sql: ${TABLE}.number_second_quarter_entities ;;
  }

  dimension: number_third_quarter_entities {
    type: string
    sql: ${TABLE}.number_third_quarter_entities ;;
  }

  dimension: second_quarter_date {
    type: string
    sql: ${TABLE}.second_quarter_date ;;
  }

  dimension: tecnocoop_risk_central_id {
    type: number
    sql: ${TABLE}.tecnocoop_risk_central_id ;;
  }

  dimension: third_quarter_date {
    type: string
    sql: ${TABLE}.third_quarter_date ;;
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
