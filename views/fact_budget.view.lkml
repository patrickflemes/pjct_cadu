view: fact_budget {
  sql_table_name: `ixcsoft-data-prod.gold_cadu.fact_budget` ;;

  dimension_group: budget {
    type: time
    timeframes: [date, week, month, quarter, year]
    label: "Orçamento"
    datatype: date
    sql: ${TABLE}.budget_date ;;
    convert_tz: no
  }

  dimension: dollar_rate {
    type: number
    label: "Taxa BRL/USD"
    sql: ${TABLE}.dollar_rate ;;
    value_format: "\"R$ \"#,##0.00"
  }

  measure: daily_cost_usd {
    type: sum
    label: "Custo Diário (USD)"
    sql: ${TABLE}.daily_cost_usd ;;
    value_format: "\"$ \"#,##0.00"
  }

  measure: cumulative_budget_brl {
    type: max
    label: "Orçamento Acumulado (BRL)"
    sql: ${TABLE}.cumulative_budget_brl ;;
    value_format: "\"R$ \"#,##0.00"
  }

  measure: cumulative_actual_brl {
    type: max
    label: "Gasto Real do Agente Smith"
    description: "Custo real acumulado em BRL. NULL após o último dia com dados."
    sql: ${TABLE}.cumulative_actual_brl ;;
    value_format: "\"R$ \"#,##0.00"
  }

  measure: cumulative_projected_brl {
    type: max
    label: "Projeção de Gasto (BRL)"
    description: "Projeção acumulada a partir do último dia com dados reais."
    sql: ${TABLE}.cumulative_projected_brl ;;
    value_format: "\"R$ \"#,##0.00"
  }
}
