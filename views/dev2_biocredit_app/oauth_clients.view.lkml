# The name of this view in Looker is "Oauth Clients"
view: oauth_clients {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.oauth_clients` ;;

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

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: password_client {
    type: number
    sql: ${TABLE}.password_client ;;
  }

  dimension: personal_access_client {
    type: number
    sql: ${TABLE}.personal_access_client ;;
  }

  dimension: redirect {
    type: string
    sql: ${TABLE}.redirect ;;
  }

  dimension: revoked {
    type: number
    sql: ${TABLE}.revoked ;;
  }

  dimension: secret {
    type: string
    sql: ${TABLE}.secret ;;
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
  measure: count {
    type: count
    drill_fields: [name]
  }
}
