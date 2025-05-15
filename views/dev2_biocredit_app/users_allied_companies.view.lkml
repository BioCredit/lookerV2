# The name of this view in Looker is "Users Allied Companies"
view: users_allied_companies {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.users_allied_companies` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Additional Information" in Explore.

  dimension: additional_information {
    type: string
    sql: ${TABLE}.additional_information ;;
  }

  dimension: cellphone {
    type: string
    sql: ${TABLE}.cellphone ;;
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

  dimension: document_id {
    type: string
    sql: ${TABLE}.document_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: external_allied_id {
    type: string
    sql: ${TABLE}.external_allied_id ;;
  }

  dimension: fee_number {
    type: number
    sql: ${TABLE}.fee_number ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: pre_approved {
    type: number
    sql: ${TABLE}.pre_approved ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
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

  dimension: user_status {
    type: number
    sql: ${TABLE}.User_Status ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
