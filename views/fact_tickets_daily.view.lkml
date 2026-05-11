view: fact_tickets_daily {
  sql_table_name: `ixcsoft-data-prod.gold_cadu.fact_tickets_daily` ;;

  dimension: ticket_date {
    type: date
    label: "Data"
    convert_tz: no
    sql: ${TABLE}.ticket_date ;;
    datatype: date
  }

  dimension: version {
    type: string
    label: "Versão"
    sql: ${TABLE}.version ;;
  }

  dimension: profile_id {
    type: number
    hidden: yes
    sql: ${TABLE}.profile_id ;;
  }

  measure: total_atendimentos {
    type: sum
    label: "Total de atendimentos"
    sql: ${TABLE}.total_atendimentos ;;
    value_format_name: decimal_0
  }

  measure: atendimentos_em_andamento {
    type: sum
    label: "Em andamento"
    sql: ${TABLE}.atendimentos_em_andamento ;;
    value_format_name: decimal_0
  }

  measure: atendimentos_finalizados {
    type: sum
    label: "Finalizados"
    sql: ${TABLE}.atendimentos_finalizados ;;
    value_format_name: decimal_0
  }
}
