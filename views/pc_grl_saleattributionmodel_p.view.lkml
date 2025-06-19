view: pc_grl_saleattributionmodel_p {
  sql_table_name: `pr-mktg-analyt-prod.staging.pc_grl_sale-attribution-model_p` ;;

  dimension: adultos {
    type: number
    sql: ${TABLE}.Adultos ;;
  }
  dimension: attribution_model {
    type: string
    sql: ${TABLE}.attribution_model ;;
  }
  dimension: attribution_revenue {
    type: number
    sql: ${TABLE}.attribution_revenue ;;
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
    sql: ${TABLE}.Check_In ;;
  }
  dimension_group: check_out {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Check_Out ;;
  }
  dimension: ciudad {
    type: string
    sql: ${TABLE}.Ciudad ;;
  }
  dimension: creative {
    type: string
    sql: ${TABLE}.creative ;;
  }
  dimension: dispositivo {
    type: string
    sql: ${TABLE}.Dispositivo ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }
  dimension: estatus {
    type: string
    sql: ${TABLE}.Estatus ;;
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
    sql: ${TABLE}.Fecha ;;
  }
  dimension_group: fecha_de_modificacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_de_Modificacion ;;
  }
  dimension_group: interaction {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.interaction_time ;;
  }
  dimension: interaction_type {
    type: string
    sql: ${TABLE}.interaction_type ;;
  }
  dimension: last_interaction {
    type: number
    sql: ${TABLE}.last_interaction ;;
  }
  dimension: marca {
    type: string
    sql: ${TABLE}.Marca ;;
  }
  dimension: medio {
    type: string
    sql: ${TABLE}.medio ;;
  }
  dimension: mercado {
    type: string
    sql: ${TABLE}.Mercado ;;
  }
  dimension: mercado_propiedad {
    type: string
    sql: ${TABLE}.Mercado_Propiedad ;;
  }
  dimension: moneda {
    type: string
    sql: ${TABLE}.Moneda ;;
  }
  dimension: motor {
    type: string
    sql: ${TABLE}.Motor ;;
  }
  dimension: ninos {
    type: number
    sql: ${TABLE}.Ninos ;;
  }
  dimension: noches {
    type: number
    sql: ${TABLE}.Noches ;;
  }
  dimension: nombre_del_huesped {
    type: string
    sql: ${TABLE}.Nombre_del_Huesped ;;
  }
  dimension: nombre_promocion {
    type: string
    sql: ${TABLE}.nombre_promocion ;;
  }
  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }
  dimension: paid_search_campaign {
    type: string
    sql: ${TABLE}.paid_search_campaign ;;
  }
  dimension: pais {
    type: string
    sql: ${TABLE}.Pais ;;
  }
  dimension: pais_id {
    type: string
    sql: ${TABLE}.Pais_ID ;;
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
    sql: ${TABLE}.Promo_Code ;;
  }
  dimension: propiedad {
    type: string
    sql: ${TABLE}.Propiedad ;;
  }
  dimension: propiedad_clave {
    type: string
    sql: ${TABLE}.Propiedad_Clave ;;
  }
  dimension: rateplan_name {
    type: string
    sql: ${TABLE}.rateplan_name ;;
  }
  dimension: referencia {
    type: string
    sql: ${TABLE}.referencia ;;
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
  dimension: segmento {
    type: string
    sql: ${TABLE}.segmento ;;
  }
  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }
  dimension: t_cliente {
    type: string
    sql: ${TABLE}.T_Cliente ;;
  }
  dimension: tipo_tarifa {
    type: string
    sql: ${TABLE}.tipo_tarifa ;;
  }
  dimension: total_conversions {
    type: number
    sql: ${TABLE}.total_conversions ;;
  }
  dimension: total_events {
    type: number
    sql: ${TABLE}.total_events ;;
  }
  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }
  measure: count {
    type: count
    drill_fields: [rateplan_name, room_name]
  }
  measure: revenue_sum {
    type: sum
    sql: ${attribution_revenue} ;;
    label: "Revenue"
    value_format_name: usd
  }
}
