view: churn_scored_orders {
  sql_table_name: `test.churn_scored_orders` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: predict {
    type: number
    sql: ${TABLE}.Predict ;;
  }
  dimension: probabilidad_de_abandono {
    type: number
    sql: ${TABLE}.Probabilidad_de_abandono ;;
  }
  dimension: probabilidad_de_permanencia {
    type: number
    sql: ${TABLE}.Probabilidad_de_permanencia ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
