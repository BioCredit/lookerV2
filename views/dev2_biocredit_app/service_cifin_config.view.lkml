# The name of this view in Looker is "Service Cifin Config"
view: service_cifin_config {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.service_cifin_config` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Company ID" in Explore.

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

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: information_code {
    type: string
    sql: ${TABLE}.information_code ;;
  }

  dimension: jar {
    type: string
    sql: ${TABLE}.jar ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: service {
    type: string
    sql: ${TABLE}.service ;;
  }

  dimension: test {
    type: number
    sql: ${TABLE}.test ;;
  }

  dimension: test_information_code {
    type: string
    sql: ${TABLE}.test_information_code ;;
  }

  dimension: test_jar {
    type: string
    sql: ${TABLE}.test_jar ;;
  }

  dimension: test_password {
    type: string
    sql: ${TABLE}.test_password ;;
  }

  dimension: test_user_name {
    type: string
    sql: ${TABLE}.test_user_name ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }
  measure: count {
    type: count
    drill_fields: [user_name, test_user_name]
  }
}
