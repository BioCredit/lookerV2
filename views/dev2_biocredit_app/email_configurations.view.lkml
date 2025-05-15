# The name of this view in Looker is "Email Configurations"
view: email_configurations {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.email_configurations` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "App Android" in Explore.

  dimension: app_android {
    type: string
    sql: ${TABLE}.app_android ;;
  }

  dimension: app_ios {
    type: string
    sql: ${TABLE}.app_ios ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: facebook {
    type: string
    sql: ${TABLE}.facebook ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: instagram {
    type: string
    sql: ${TABLE}.instagram ;;
  }

  dimension: linkedin {
    type: string
    sql: ${TABLE}.linkedin ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: no_reply_email {
    type: string
    sql: ${TABLE}.no_reply_email ;;
  }

  dimension: politics {
    type: string
    sql: ${TABLE}.politics ;;
  }

  dimension: terms {
    type: string
    sql: ${TABLE}.terms ;;
  }

  dimension: twitter {
    type: string
    sql: ${TABLE}.twitter ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: youtube {
    type: string
    sql: ${TABLE}.youtube ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
