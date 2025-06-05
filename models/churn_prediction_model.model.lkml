connection: "pr-mktg-analyt-bq-conn-analytics"

# include all the views
include: "/views/**/*.view.lkml"
include: "/explores/**/*.explore.lkml"

datagroup: churn_prediction_model_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: churn_prediction_model_default_datagroup
