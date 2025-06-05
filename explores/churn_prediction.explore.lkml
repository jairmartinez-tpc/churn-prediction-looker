include: "/views/**/*.view.lkml"

explore: churn_scored_orders {
  join: pc_grl_totalsales_g {
    type: left_outer         # or inner, left_outer is typical
    sql_on: ${churn_scored_orders.id} = ${pc_grl_totalsales_g.id} ;;
    relationship: many_to_one  # orders has many order_details, or one_to_one
  }
}
