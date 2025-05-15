# The name of this view in Looker is "Tbl Datos Asociados Redil"
view: tbl_datos_asociados_redil {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.Tbl_Datos_Asociados_REDIL` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cedula" in Explore.

  dimension: cedula {
    type: number
    sql: ${TABLE}.CEDULA ;;
  }

  dimension: celular {
    type: string
    sql: ${TABLE}.CELULAR ;;
  }

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

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: primer_apellido {
    type: string
    sql: ${TABLE}.PRIMER_APELLIDO ;;
  }

  dimension: primer_nombre {
    type: string
    sql: ${TABLE}.PRIMER_NOMBRE ;;
  }

  dimension: segundo_apellido {
    type: string
    sql: ${TABLE}.SEGUNDO_APELLIDO ;;
  }

  dimension: segundo_nombre {
    type: string
    sql: ${TABLE}.SEGUNDO_NOMBRE ;;
  }
  measure: count {
    type: count
  }
}
