# The name of this view in Looker is "Tbl Download Report By Language"
view: tbl_download_report_by_language {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.Tbl_Download_Report_by_Language` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Active Device Installs" in Explore.

  dimension: active_device_installs {
    type: number
    sql: ${TABLE}.Active_Device_Installs ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created_at ;;
  }

  dimension: daily_device_installs {
    type: number
    sql: ${TABLE}.Daily_Device_Installs ;;
  }

  dimension: daily_device_uninstalls {
    type: number
    sql: ${TABLE}.Daily_Device_Uninstalls ;;
  }

  dimension: daily_device_upgrades {
    type: number
    sql: ${TABLE}.Daily_Device_Upgrades ;;
  }

  dimension: daily_user_installs {
    type: number
    sql: ${TABLE}.Daily_User_Installs ;;
  }

  dimension: daily_user_uninstalls {
    type: number
    sql: ${TABLE}.Daily_User_Uninstalls ;;
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

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.Language ;;
  }

  dimension: package_name {
    type: string
    sql: ${TABLE}.Package_Name ;;
  }

  dimension: total_user_installs {
    type: number
    sql: ${TABLE}.Total_User_Installs ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [package_name]
  }
}
