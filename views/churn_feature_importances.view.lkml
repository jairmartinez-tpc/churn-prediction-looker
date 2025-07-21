view: churn_feature_importances {
  sql_table_name: `pr-mktg-analyt-prod.test.churn_feature_importances` ;;

  dimension: feature {
    type: string
    sql: ${TABLE}.feature ;;
  }
  dimension: importance {
    type: number
    sql: ${TABLE}.importance ;;
  }
  dimension: importance_pct {
    type: number
    sql: ${TABLE}.importance_pct ;;
  }
  measure: count {
    type: count
  }
  measure: importance_sum{
    type: sum
    sql: ${importance} ;;
    label: "Importance Sum"
  }
}
