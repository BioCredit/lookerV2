# The name of this view in Looker is "Apis Pdn"
view: apis_pdn {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.apis_pdn` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }

  dimension: birthdate {
    type: string
    sql: ${TABLE}.birthdate ;;
  }

  dimension: civil_status {
    type: string
    sql: ${TABLE}.civil_status ;;
  }

  dimension: cod_ult_producto {
    type: string
    sql: ${TABLE}.cod_ult_producto ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: company_address {
    type: string
    sql: ${TABLE}.company_address ;;
  }

  dimension: company_number {
    type: string
    sql: ${TABLE}.company_number ;;
  }

  dimension: cons_com_3meses {
    type: string
    sql: ${TABLE}.cons_com_3meses ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension: credit_fee {
    type: string
    sql: ${TABLE}.credit_fee ;;
  }

  dimension: credit_total_amount {
    type: string
    sql: ${TABLE}.credit_total_amount ;;
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

  dimension: depto {
    type: string
    sql: ${TABLE}.depto ;;
  }

  dimension: document_id {
    type: string
    sql: ${TABLE}.document_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: house_number {
    type: string
    sql: ${TABLE}.house_number ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: instance {
    type: string
    sql: ${TABLE}.instance ;;
  }

  dimension: ips {
    type: string
    sql: ${TABLE}.ips ;;
  }

  dimension: item {
    type: string
    sql: ${TABLE}.item ;;
  }

  dimension: labor_old {
    type: string
    sql: ${TABLE}.labor_old ;;
  }

  dimension: model_score {
    type: string
    sql: ${TABLE}.model_score ;;
  }

  dimension: monthly_expenses {
    type: string
    sql: ${TABLE}.monthly_expenses ;;
  }

  dimension: monthly_income {
    type: string
    sql: ${TABLE}.monthly_income ;;
  }

  dimension: official {
    type: string
    sql: ${TABLE}.official ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: phone_prefix {
    type: string
    sql: ${TABLE}.phone_prefix ;;
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
    type: string
    sql: ${TABLE}.tipo_cliente ;;
  }

  dimension: type_house {
    type: string
    sql: ${TABLE}.type_house ;;
  }

  dimension: ult_12meses_bf {
    type: string
    sql: ${TABLE}.ult_12meses_bf ;;
  }

  dimension: ult_12meses_ot {
    type: string
    sql: ${TABLE}.ult_12meses_ot ;;
  }

  dimension: ult_3meses_bf {
    type: string
    sql: ${TABLE}.ult_3meses_bf ;;
  }

  dimension: ult_3meses_ot {
    type: string
    sql: ${TABLE}.ult_3meses_ot ;;
  }

  dimension: ult_6meses_ot {
    type: string
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
  measure: count {
    type: count
  }
}
