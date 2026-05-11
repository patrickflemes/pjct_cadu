view: fact_tickets_by_user_daily {
  sql_table_name: `ixcsoft-data-dev.gold_cadu.fact_tickets_by_user_daily` ;;

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

  dimension: email {
    type: string
    label: "Email"
    sql: ${TABLE}.email ;;
  }

  dimension: user_name {
    type: string
    label: "Usuário"
    sql: ${TABLE}.user_name ;;
  }

  measure: total_atendimentos {
    type: sum
    label: "Quantidade"
    sql: ${TABLE}.total_atendimentos ;;
    value_format_name: decimal_0
  }
}
