view: fact_tickets_by_profile_daily {
  sql_table_name: `ixcsoft-data-prod.gold_cadu.fact_tickets_by_profile_daily` ;;

  dimension: ticket_date {
    type: date
    label: "Data"
    sql: ${TABLE}.ticket_date ;;
    datatype: date
  }

  dimension: version {
    type: string
    label: "Versão"
    sql: ${TABLE}.version ;;
  }

  dimension: profile_name {
    type: string
    label: "Departamento"
    sql: ${TABLE}.profile_name ;;
  }

  measure: total_atendimentos {
    type: sum
    label: "Quantidade"
    sql: ${TABLE}.total_atendimentos ;;
    value_format_name: decimal_0
  }
}
