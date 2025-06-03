# The name of this view in Looker is "User Credit"
view: user_credit {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.user_credit` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Appname" in Explore.

  dimension: appname {
    type: string
    sql: ${TABLE}.appname ;;
  }

  dimension: channel_hash {
    type: string
    sql: ${TABLE}.channel_hash ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension: credit_line_config_id {
    type: number
    sql: ${TABLE}.credit_line_config_id ;;
  }

  dimension: credit_status_id {
    type: number
    sql: ${TABLE}.credit_status_id ;;
  }
  dimension: credit_status_label
  {
    type: string
    sql:
    CASE
      WHEN ${credit_status_id} = 1 THEN 'Pendiente'
      WHEN ${credit_status_id} = 2 THEN 'Aprobado'
      WHEN ${credit_status_id} = 3 THEN 'Negado'
      ELSE 'Null'
    END ;;
  }

  dimension: credit_type_id {
    type: number
    sql: ${TABLE}.credit_type_id ;;
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

  dimension: display_state {
    type: number
    sql: ${TABLE}.display_state ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: fee_number {
    type: string
    sql: ${TABLE}.fee_number ;;
  }

  dimension: fee_value {
    type: string
    sql: ${TABLE}.fee_value ;;
  }

  dimension_group: finished {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.finished_at ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: original_fee_number {
    type: string
    sql: ${TABLE}.original_fee_number ;;
  }

  dimension: original_fee_value {
    type: string
    sql: ${TABLE}.original_fee_value ;;
  }

  dimension: original_rate {
    type: string
    sql: ${TABLE}.original_rate ;;
  }

  dimension: original_total_amount {
    type: string
    sql: ${TABLE}.original_total_amount ;;
  }

  dimension: product_hash {
    type: string
    sql: ${TABLE}.product_hash ;;
  }

  dimension: rate {
    type: string
    sql: ${TABLE}.rate ;;
  }

  dimension: read_status {
    type: number
    sql: ${TABLE}.read_status ;;
  }

  dimension: reference_code {
    type: string
    sql: ${TABLE}.reference_code ;;
  }

  dimension: total_amount {
    type: string
    sql: ${TABLE}.total_amount ;;
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
  #------------------------------------------------------------medidas---------------------------
  measure: count {
    type: count
    drill_fields: [appname]
  }
  measure:suma_total_amount{
    type: sum
    sql: CAST(${total_amount} AS INT64) ;;
  }

}
