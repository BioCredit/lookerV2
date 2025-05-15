# The name of this view in Looker is "Tbl Biocredit Behavior Model"
view: tbl_biocredit_behavior_model {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dev2_biocredit_app.Tbl_Biocredit_Behavior_Model` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Eres Funcionario P Blico " in Explore.

  dimension: _eres_funcionario_p_blico_ {
    type: string
    sql: ${TABLE}._Eres_funcionario_p_blico_ ;;
  }

  dimension: _tiene_un_c_digo_de_referido_ {
    type: string
    sql: ${TABLE}._Tiene_un_c_digo_de_referido_ ;;
  }

  dimension: actividad_economica {
    type: string
    sql: ${TABLE}.Actividad_Economica ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: antig_edad_en_la_vivienda__a_os__colombia {
    type: string
    sql: ${TABLE}.Antig_edad_en_la_vivienda__a_os__Colombia ;;
  }

  dimension: antig_edad_laboral_en_a_os_ {
    type: string
    sql: ${TABLE}.Antig_edad_Laboral_En_A_os_ ;;
  }

  dimension: barrio {
    type: string
    sql: ${TABLE}.Barrio ;;
  }

  dimension: barrio_colombia {
    type: string
    sql: ${TABLE}.Barrio_Colombia ;;
  }

  dimension: birth_date_linkedin {
    type: string
    sql: ${TABLE}.birthDateLinkedin ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: birthdate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.birthdate ;;
  }

  dimension_group: birthday {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.birthday ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: calculated_age {
    type: number
    sql: ${TABLE}.CalculatedAge ;;
  }

  dimension: cantidad_contactos {
    type: number
    sql: ${TABLE}.CantidadContactos ;;
  }

  dimension: certifications {
    type: string
    sql: ${TABLE}.certifications ;;
  }

  dimension: citizenship {
    type: string
    sql: ${TABLE}.citizenship ;;
  }

  dimension: ciudad {
    type: string
    sql: ${TABLE}.Ciudad ;;
  }

  dimension: ciudad_de_residencia_colombia {
    type: string
    sql: ${TABLE}.Ciudad_de_Residencia_Colombia ;;
  }

  dimension: classes {
    type: string
    sql: ${TABLE}.classes ;;
  }

  dimension: cod_ult_producto {
    type: string
    sql: ${TABLE}.cod_ult_producto ;;
  }

  dimension: college_name {
    type: string
    sql: ${TABLE}.College_Name ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: concentration {
    type: string
    sql: ${TABLE}.concentration ;;
  }

  dimension: cons_com_3meses {
    type: number
    sql: ${TABLE}.cons_com_3meses ;;
  }

  dimension: courses {
    type: string
    sql: ${TABLE}.courses ;;
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension: credit_id {
    type: number
    sql: ${TABLE}.credit_id ;;
  }

  dimension: credit_line {
    type: string
    sql: ${TABLE}.credit_line ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
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

  dimension: degree {
    type: string
    sql: ${TABLE}.degree ;;
  }

  dimension: departamento {
    type: string
    sql: ${TABLE}.Departamento ;;
  }

  dimension: device_os {
    type: string
    sql: ${TABLE}.device_os ;;
  }

  dimension: direcci_n_de_residencia {
    type: string
    sql: ${TABLE}.Direcci_n_de_residencia ;;
  }

  dimension: direcci_n_de_residencia_colombia {
    type: string
    sql: ${TABLE}.Direcci_n_de_Residencia_Colombia ;;
  }

  dimension: direcci_n_empresa_laboral {
    type: string
    sql: ${TABLE}.Direcci_n_empresa_laboral ;;
  }

  dimension: document_id {
    type: string
    sql: ${TABLE}.document_id ;;
  }

  dimension: educations {
    type: string
    sql: ${TABLE}.educations ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_facebook {
    type: string
    sql: ${TABLE}.emailFacebook ;;
  }

  dimension: employer {
    type: string
    sql: ${TABLE}.employer ;;
  }

  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }

  dimension: entrantes {
    type: number
    sql: ${TABLE}.Entrantes ;;
  }

  dimension: estado_civil {
    type: string
    sql: ${TABLE}.Estado_Civil ;;
  }

  dimension: estado_civil_colombia {
    type: string
    sql: ${TABLE}.Estado_Civil_Colombia ;;
  }

  dimension: estrato_colombia {
    type: string
    sql: ${TABLE}.Estrato_Colombia ;;
  }

  dimension: facebook_id {
    type: string
    sql: ${TABLE}.facebook_id ;;
  }

  dimension: fecha_de_expedici_n_c_c__colombia {
    type: string
    sql: ${TABLE}.Fecha_de_expedici_n_C_C__Colombia ;;
  }

  dimension: fee_value {
    type: string
    sql: ${TABLE}.fee_value ;;
  }

  dimension: from {
    type: string
    sql: ${TABLE}.`from` ;;
  }

  dimension: gastos_mensuales {
    type: string
    sql: ${TABLE}.Gastos_mensuales ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: gender_facebook {
    type: string
    sql: ${TABLE}.genderFacebook ;;
  }

  dimension: honors {
    type: string
    sql: ${TABLE}.honors ;;
  }

  dimension: ingresos_fijos_mensuales {
    type: string
    sql: ${TABLE}.Ingresos_fijos_Mensuales ;;
  }

  dimension: instance {
    type: string
    sql: ${TABLE}.instance ;;
  }

  dimension: ips {
    type: string
    sql: ${TABLE}.IPS ;;
  }

  dimension: item {
    type: string
    sql: ${TABLE}.item ;;
  }

  dimension: languages {
    type: string
    sql: ${TABLE}.languages ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: longitud {
    type: string
    sql: ${TABLE}.Longitud ;;
  }

  dimension: lugar_de_expedici_n_c_c__colombia {
    type: string
    sql: ${TABLE}.Lugar_de_expedici_n_C_C__Colombia ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: model_score {
    type: number
    sql: ${TABLE}.model_score ;;
  }

  dimension: n_mero_de_casa {
    type: string
    sql: ${TABLE}.N_mero_de_casa ;;
  }

  dimension: n_mero_de_casa_empresa {
    type: string
    sql: ${TABLE}.N_mero_de_casa_empresa ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nivel_de_estudios_colombia {
    type: string
    sql: ${TABLE}.Nivel_de_estudios_Colombia ;;
  }

  dimension: nombre_empresa_laboral {
    type: string
    sql: ${TABLE}.Nombre_empresa_laboral ;;
  }

  dimension: numero_de_celular {
    type: string
    sql: ${TABLE}.Numero_de_celular ;;
  }

  dimension: ocupaci_n {
    type: string
    sql: ${TABLE}.Ocupaci_n ;;
  }

  dimension: patents {
    type: string
    sql: ${TABLE}.patents ;;
  }

  dimension: perdidas {
    type: number
    sql: ${TABLE}.Perdidas ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }

  dimension: prefijo_celular {
    type: string
    sql: ${TABLE}.Prefijo_celular ;;
  }

  dimension: profile_email_linkedin {
    type: string
    sql: ${TABLE}.Profile_emailLinkedin ;;
  }

  dimension: profile_name_linkedin {
    type: string
    sql: ${TABLE}.Profile_nameLinkedin ;;
  }

  dimension: proform {
    type: string
    sql: ${TABLE}.proform ;;
  }

  dimension: prospecta {
    type: string
    sql: ${TABLE}.Prospecta ;;
  }

  dimension: publications {
    type: string
    sql: ${TABLE}.publications ;;
  }

  dimension: quotas {
    type: string
    sql: ${TABLE}.quotas ;;
  }

  dimension: rate {
    type: string
    sql: ${TABLE}.rate ;;
  }

  dimension: rh {
    type: string
    sql: ${TABLE}.rh ;;
  }

  dimension: salientes {
    type: number
    sql: ${TABLE}.Salientes ;;
  }

  dimension: school {
    type: string
    sql: ${TABLE}.school ;;
  }

  dimension: score {
    type: string
    sql: ${TABLE}.Score ;;
  }

  dimension: score_pdn {
    type: string
    sql: ${TABLE}.score_pdn ;;
  }

  dimension: screen_resolution {
    type: string
    sql: ${TABLE}.screen_resolution ;;
  }

  dimension: sdk {
    type: string
    sql: ${TABLE}.sdk ;;
  }

  dimension: skills {
    type: string
    sql: ${TABLE}.skills ;;
  }

  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: tel_fono_fijo_colombia {
    type: string
    sql: ${TABLE}.Tel_fono_fijo_Colombia ;;
  }

  dimension: tipo_cliente {
    type: number
    sql: ${TABLE}.tipo_cliente ;;
  }

  dimension: tipo_de_vivienda {
    type: string
    sql: ${TABLE}.Tipo_de_Vivienda ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: ult_12meses_bf {
    type: number
    sql: ${TABLE}.ult_12meses_bf ;;
  }

  dimension: ult_12meses_ot {
    type: number
    sql: ${TABLE}.ult_12meses_ot ;;
  }

  dimension: ult_3meses_bf {
    type: number
    sql: ${TABLE}.ult_3meses_bf ;;
  }

  dimension: ult_3meses_ot {
    type: number
    sql: ${TABLE}.ult_3meses_ot ;;
  }

  dimension: ult_6meses_ot {
    type: number
    sql: ${TABLE}.ult_6meses_ot ;;
  }

  dimension: ult_faja_ope {
    type: string
    sql: ${TABLE}.ult_faja_ope ;;
  }

  dimension: up_time {
    type: string
    sql: ${TABLE}.up_time ;;
  }

  dimension: user_facebook_name {
    type: string
    sql: ${TABLE}.User_Facebook_Name ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_id_users {
    type: number
    value_format_name: id
    sql: ${TABLE}.user_idUsers ;;
  }

  dimension: version_code {
    type: string
    sql: ${TABLE}.version_code ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
    drill_fields: [user_facebook_name, name, college_name]
  }
}
