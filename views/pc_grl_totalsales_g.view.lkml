view: pc_grl_totalsales_g {
  sql_table_name: `pr-mktg-analyt-prod.staging.pc_grl_total-sales_g` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: ad {
    type: string
    sql: ${TABLE}.ad ;;
  }
  dimension: adultos {
    type: number
    sql: ${TABLE}.adultos ;;
  }
  dimension: bookings {
    type: number
    sql: ${TABLE}.bookings ;;
  }
  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }
  dimension_group: cancellation {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cancellation_date ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }
  dimension_group: check_in {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.check_in ;;
  }
  dimension_group: check_out {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.check_out ;;
  }
  dimension: ciudad {
    type: string
    sql: ${TABLE}.ciudad ;;
  }
  dimension: creative {
    type: string
    sql: ${TABLE}.creative ;;
  }
  dimension: cross_selling {
    type: string
    sql: ${TABLE}.cross_selling ;;
  }
  dimension: dispositivo {
    type: string
    sql: ${TABLE}.dispositivo ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: estatus {
    type: string
    sql: ${TABLE}.estatus ;;
  }
  dimension: estrategia {
    type: string
    sql: ${TABLE}.estrategia ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension_group: fecha_de_modificacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_de_modificacion ;;
  }
  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }
  dimension: mercado {
    type: string
    sql: ${TABLE}.mercado ;;
  }
  dimension: mercado_propiedad {
    type: string
    sql: ${TABLE}.mercado_propiedad ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.moneda ;;
  }
  dimension: motor {
    type: string
    sql: ${TABLE}.motor ;;
  }
  dimension: ninos {
    type: number
    sql: ${TABLE}.ninos ;;
  }
  dimension: noches {
    type: number
    sql: ${TABLE}.noches ;;
  }
  dimension: nombre_del_huesped {
    type: string
    sql: ${TABLE}.nombre_del_huesped ;;
  }
  dimension: nombre_promocion {
    type: string
    sql: ${TABLE}.nombre_promocion ;;
  }
  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }
  dimension: pais_id {
    type: string
    sql: ${TABLE}.pais_id ;;
  }
  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }
  dimension: placement {
    type: string
    sql: ${TABLE}.placement ;;
  }
  dimension: promo_code {
    type: string
    sql: ${TABLE}.promo_code ;;
  }
  dimension: propiedad {
    type: string
    sql: ${TABLE}.propiedad ;;
  }
  dimension: propiedad_adserver {
    type: string
    sql: ${TABLE}.propiedad_adserver ;;
  }
  dimension: propiedad_clave {
    type: string
    sql: ${TABLE}.propiedad_clave ;;
  }
  dimension: rateplan_name {
    type: string
    sql: ${TABLE}.rateplan_name ;;
  }
  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }
  dimension: revenue_cancelado {
    type: number
    sql: ${TABLE}.revenue_cancelado ;;
  }
  dimension: revenue_neto {
    type: number
    sql: ${TABLE}.revenue_neto ;;
  }
  dimension: room_name {
    type: string
    sql: ${TABLE}.room_name ;;
  }
  dimension: search_campaign {
    type: string
    sql: ${TABLE}.search_campaign ;;
  }
  dimension: segmento {
    type: string
    sql: ${TABLE}.segmento ;;
  }
  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }
  dimension: site_adserver {
    type: string
    sql: ${TABLE}.site_adserver ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  dimension: t_cliente {
    type: string
    sql: ${TABLE}.t_cliente ;;
  }
  dimension: tipo_tarifa {
    type: string
    sql: ${TABLE}.tipo_tarifa ;;
  }
  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }

  measure: revenue_sum {
    type: sum
    sql: ${revenue} ;;
    label: "Revenue"
    value_format_name: usd
  }

  measure: count {
    type: count
    drill_fields: [id, rateplan_name, room_name]
  }
}
