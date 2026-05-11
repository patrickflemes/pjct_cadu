view: ops_freshness {
  sql_table_name: `ixcsoft-data-prod.ops_cadu.ops_freshness` ;;

  dimension: table_name {
    type: string
    label: "Tabela"
    sql: ${TABLE}.table_name ;;
  }

  dimension_group: last_updated {
    type: time
    timeframes: [raw, time, date]
    label: "Última Atualização"
    sql: ${TABLE}.last_updated_at ;;
    datatype: timestamp
  }

  dimension: row_count {
    type: number
    label: "Qtd. Linhas"
    sql: ${TABLE}.row_count ;;
    value_format_name: decimal_0
  }

  dimension: size_mb {
    type: number
    label: "Tamanho (MB)"
    sql: ${TABLE}.size_mb ;;
    value_format: "0.00"
  }
}
