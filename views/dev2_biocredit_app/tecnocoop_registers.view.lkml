# The name of this view in Looker is "Tecnocoop Registers"
view: tecnocoop_registers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.tecnocoop_registers` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Amount Due Obligations" in Explore.

  dimension: amount_due_obligations {
    type: string
    sql: ${TABLE}.amount_due_obligations ;;
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

  dimension: due_obligations_balance {
    type: string
    sql: ${TABLE}.due_obligations_balance ;;
  }

  dimension: due_obligations_fee {
    type: string
    sql: ${TABLE}.due_obligations_fee ;;
  }

  dimension: due_value {
    type: string
    sql: ${TABLE}.due_value ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name_obligation {
    type: string
    sql: ${TABLE}.name_obligation ;;
  }

  dimension: obligations_day {
    type: string
    sql: ${TABLE}.obligations_day ;;
  }

  dimension: obligations_day_balance {
    type: string
    sql: ${TABLE}.obligations_day_balance ;;
  }

  dimension: obligations_day_fee {
    type: string
    sql: ${TABLE}.obligations_day_fee ;;
  }

  dimension: tecnocoop_risk_central_id {
    type: number
    sql: ${TABLE}.tecnocoop_risk_central_id ;;
  }

  dimension: total_balance {
    type: string
    sql: ${TABLE}.total_balance ;;
  }

  dimension: total_number_obligations {
    type: string
    sql: ${TABLE}.total_number_obligations ;;
  }

  dimension: total_participation_percentage {
    type: string
    sql: ${TABLE}.total_participation_percentage ;;
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
