# The name of this view in Looker is "Users Pdn"
view: users_pdn {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.users_pdn` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cod Ult Producto" in Explore.

  dimension: cod_ult_producto {
    type: string
    sql: ${TABLE}.cod_ult_producto ;;
  }

  dimension: cons_com_3meses {
    type: number
    sql: ${TABLE}.cons_com_3meses ;;
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

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: instance {
    type: string
    sql: ${TABLE}.instance ;;
  }

  dimension: item {
    type: string
    sql: ${TABLE}.item ;;
  }

  dimension: model_score {
    type: number
    sql: ${TABLE}.model_score ;;
  }

  dimension: proform {
    type: string
    sql: ${TABLE}.proform ;;
  }

  dimension: score_pdn {
    type: string
    sql: ${TABLE}.score_pdn ;;
  }

  dimension: tipo_cliente {
    type: number
    sql: ${TABLE}.tipo_cliente ;;
  }

  dimension: ult_12meses_bf {
    type: number
    sql: ${TABLE}.ult_12meses_bf ;;
  }

  dimension: ult_12meses_ot {
    type: number
    sql: ${TABLE}.ult_12meses_ot ;;
  }

  dimension: ult_3meses_bf {
    type: number
    sql: ${TABLE}.ult_3meses_bf ;;
  }

  dimension: ult_3meses_ot {
    type: number
    sql: ${TABLE}.ult_3meses_ot ;;
  }

  dimension: ult_6meses_ot {
    type: number
    sql: ${TABLE}.ult_6meses_ot ;;
  }

  dimension: ult_faja_ope {
    type: string
    sql: ${TABLE}.ult_faja_ope ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user_credit_id {
    type: number
    sql: ${TABLE}.user_credit_id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}
