# The name of this view in Looker is "Mexico Localidades"
view: mexico_localidades {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.mexico_localidades` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activo" in Explore.

  dimension: activo {
    type: number
    sql: ${TABLE}.activo ;;
  }

  dimension: altitud {
    type: string
    sql: ${TABLE}.altitud ;;
  }

  dimension: ambito {
    type: string
    sql: ${TABLE}.ambito ;;
  }

  dimension: carta {
    type: string
    sql: ${TABLE}.carta ;;
  }

  dimension: clave {
    type: string
    sql: ${TABLE}.clave ;;
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

  dimension: femenino {
    type: number
    sql: ${TABLE}.femenino ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: latitud {
    type: string
    sql: ${TABLE}.latitud ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: longitud {
    type: string
    sql: ${TABLE}.longitud ;;
  }

  dimension: masculino {
    type: number
    sql: ${TABLE}.masculino ;;
  }

  dimension: municipio_id {
    type: number
    sql: ${TABLE}.municipio_id ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: poblacion {
    type: number
    sql: ${TABLE}.poblacion ;;
  }

  dimension: viviendas {
    type: number
    sql: ${TABLE}.viviendas ;;
  }
  measure: count {
    type: count
  }
}
