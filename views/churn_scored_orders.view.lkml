view: churn_scored_orders {
  sql_table_name: `pr-mktg-analyt-prod.test.churn_scored_orders` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.order_id ;;
  }
  dimension: predict {
    type: number
    sql: ${TABLE}.Predict ;;
  }
  dimension: probabilidad_de_abandono {
    type: number
    sql: ${TABLE}.Probabilidad_de_abandono ;;
    value_format: "0.00\%"
  }
  dimension: probabilidad_de_permanencia {
    type: number
    sql: ${TABLE}.Probabilidad_de_permanencia ;;
    value_format: "0.00\%"
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
