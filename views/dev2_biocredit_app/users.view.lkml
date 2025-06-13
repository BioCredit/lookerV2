# The name of this view in Looker is "Users"
view: users {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.users` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: birthdate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.birthdate ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Citizenship" in Explore.

  #--------------------Edad actual---------------------------------
  dimension: edad {
    type: number
    sql: TIMESTAMP_DIFF(CURRENT_DATE(), ${birthdate_raw}, YEAR) ;;
  }
  dimension: citizenship {
    type: string
    sql: ${TABLE}.citizenship ;;
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension: crop_document_image_back {
    type: string
    sql: ${TABLE}.crop_document_image_back ;;
  }

  dimension: crop_document_image_front {
    type: string
    sql: ${TABLE}.crop_document_image_front ;;
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

  dimension: device_os {
    type: string
    sql: ${TABLE}.device_os ;;
  }

  dimension: document_analyzed {
    type: number
    sql: ${TABLE}.document_analyzed ;;
  }

  dimension: document_content {
    type: string
    sql: ${TABLE}.document_content ;;
  }

  dimension: document_id {
    type: string
    sql: ${TABLE}.document_id ;;
  }

  dimension: document_id_mix_imagen {
    type: string
    sql: ${TABLE}.document_id_mix_imagen ;;
  }

  dimension: document_id_mix_pdf {
    type: string
    sql: ${TABLE}.document_id_mix_pdf ;;
  }

  dimension: document_image_back {
    type: string
    sql: ${TABLE}.document_image_back ;;
  }

  dimension: document_image_front {
    type: string
    sql: ${TABLE}.document_image_front ;;
  }

  dimension: document_validated {
    type: number
    sql: ${TABLE}.document_validated ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_token {
    type: string
    sql: ${TABLE}.email_token ;;
  }

  dimension: face_image {
    type: string
    sql: ${TABLE}.face_image ;;
  }

  dimension: facebook_id {
    type: string
    sql: ${TABLE}.facebook_id ;;
  }

  dimension: facebook_token {
    type: string
    sql: ${TABLE}.facebook_token ;;
  }

  dimension: first_last_name {
    type: string
    sql: ${TABLE}.first_last_name ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: linkedin_id {
    type: string
    sql: ${TABLE}.linkedin_id ;;
  }

  dimension: linkedin_token {
    type: string
    sql: ${TABLE}.linkedin_token ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: oauth_token {
    type: string
    sql: ${TABLE}.oauth_token ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: phone_token {
    type: string
    sql: ${TABLE}.phone_token ;;
  }

  dimension: phone_verified {
    type: number
    sql: ${TABLE}.phone_verified ;;
  }

  dimension: profile_image {
    type: string
    sql: ${TABLE}.profile_image ;;
  }

  dimension: push_token {
    type: string
    sql: ${TABLE}.push_token ;;
  }

  dimension: remember_token {
    type: string
    sql: ${TABLE}.remember_token ;;
  }

  dimension: rh {
    type: string
    sql: ${TABLE}.rh ;;
  }

  dimension: second_last_name {
    type: string
    sql: ${TABLE}.second_last_name ;;
  }

  dimension: second_name {
    type: string
    sql: ${TABLE}.second_name ;;
  }

  dimension: temporary_user {
    type: string
    sql: ${TABLE}.temporary_user ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: verified {
    type: number
    sql: ${TABLE}.verified ;;
  }
  measure: count {
    type: count
    drill_fields: [first_name, second_last_name, first_last_name, name, second_name]
  }
}
