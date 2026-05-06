connection: "conn_bigquery_dev"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: mdl_dev_cadu_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mdl_dev_cadu_default_datagroup

explore: dim_profile {}

explore: dim_user {}

explore: fact_tickets {}

