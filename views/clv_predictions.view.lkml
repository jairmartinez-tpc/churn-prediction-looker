view: clv_predictions {
  sql_table_name: `pr-mktg-analyt-prod.test.clv_predictions` ;;

  dimension: clv {
    type: number
    sql: ${TABLE}.CLV ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
    primary_key: yes
  }
  dimension: exp_avg_sales {
    type: number
    sql: ${TABLE}.exp_avg_sales ;;
    value_format: "$#.00;($#.00)"
  }
  dimension: frequency {
    type: number
    sql: ${TABLE}.frequency ;;
  }
  dimension: manual_predicted_clv {
    type: number
    sql: ${TABLE}.manual_predicted_clv ;;
  }
  dimension: monetary_value {
    type: number
    sql: ${TABLE}.monetary_value ;;
    value_format: "$#.00;($#.00)"
  }
  dimension: pred_num_txn {
    type: number
    sql: ${TABLE}.pred_num_txn ;;
  }
  dimension: predicted_clv {
    type: number
    sql: ${TABLE}.predicted_clv ;;
    value_format: "$#.00;($#.00)"
  }
  dimension: probability_alive {
    type: number
    sql: ${TABLE}.probability_alive ;;
    value_format: "0.00%"
  }
  dimension: recency {
    type: number
    sql: ${TABLE}.recency ;;
  }
  dimension: t {
    type: number
    sql: ${TABLE}.T ;;
  }
  measure: count {
    type: count
  }
}
