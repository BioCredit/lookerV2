# The name of this view in Looker is "Temp Push User Notifications Max"
view: temp_push_user_notifications_max {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.Temp_Push_User_Notifications_Max` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Datastream Metadata Is Deleted" in Explore.

  dimension: datastream_metadata__is_deleted {
    type: yesno
    sql: ${TABLE}.datastream_metadata.is_deleted ;;
    group_label: "Datastream Metadata"
    group_item_label: "Is Deleted"
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

  dimension: max_sort_ {
    type: number
    sql: ${TABLE}.max_sort_ ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}
