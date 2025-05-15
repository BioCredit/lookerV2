# The name of this view in Looker is "User Facial Recognition"
view: user_facial_recognition {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.user_facial_recognition` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Age" in Explore.

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }

  dimension: beard {
    type: string
    sql: ${TABLE}.beard ;;
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

  dimension: face_attributes {
    type: string
    sql: ${TABLE}.face_attributes ;;
  }

  dimension: face_landmarks {
    type: string
    sql: ${TABLE}.face_landmarks ;;
  }

  dimension: face_rectangle {
    type: string
    sql: ${TABLE}.face_rectangle ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: glasses {
    type: string
    sql: ${TABLE}.glasses ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: moustache {
    type: string
    sql: ${TABLE}.moustache ;;
  }

  dimension: sideburns {
    type: string
    sql: ${TABLE}.sideburns ;;
  }

  dimension: smile {
    type: string
    sql: ${TABLE}.smile ;;
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
  }
}
