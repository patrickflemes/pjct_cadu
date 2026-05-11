view: fact_cost_by_profile_daily {
  sql_table_name: `ixcsoft-data-prod.gold_cadu.fact_cost_by_profile_daily` ;;

  dimension: ticket_date {
    type: date
    label: "Data"
    sql: ${TABLE}.ticket_date ;;
    datatype: date
  }

  dimension: profile_name {
    type: string
    label: "Departamento"
    sql: ${TABLE}.profile_name ;;
  }

  measure: cost_total {
    type: sum
    label: "Custo Total"
    sql: ${TABLE}.cost_total ;;
    value_format: "\"$ \"#,##0.00"
  }

  measure: cost_average {
    type: average
    label: "Custo Médio"
    sql: ${TABLE}.cost_average ;;
    value_format: "\"$ \"#,##0.00"
  }

  measure: total_atendimentos {
    type: sum
    label: "Atendimentos"
    sql: ${TABLE}.total_atendimentos ;;
    value_format_name: decimal_0
  }
}
