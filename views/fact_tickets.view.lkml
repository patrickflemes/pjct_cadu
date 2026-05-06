view: fact_tickets {
  sql_table_name: `gold_cadu.fact_tickets` ;;
  drill_fields: [ticket_id]

  dimension: ticket_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ticket_id ;;
  }
  dimension: bot_id {
    type: number
    sql: ${TABLE}.bot_id ;;
  }
  dimension: cache_creation_1h_input_tokens {
    type: number
    sql: ${TABLE}.cache_creation_1h_input_tokens ;;
  }
  dimension: cache_creation_5m_input_tokens {
    type: number
    sql: ${TABLE}.cache_creation_5m_input_tokens ;;
  }
  dimension: cache_creation_input_tokens {
    type: number
    sql: ${TABLE}.cache_creation_input_tokens ;;
  }
  dimension: cache_read_input_tokens {
    type: number
    sql: ${TABLE}.cache_read_input_tokens ;;
  }
  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }
  dimension_group: customer_notified_human_returns {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.customer_notified_human_returns_at ;;
  }
  dimension: first_assigned_by_user_id {
    type: number
    sql: ${TABLE}.first_assigned_by_user_id ;;
  }
  dimension: help_state {
    type: string
    sql: ${TABLE}.help_state ;;
  }
  dimension: input_tokens {
    type: number
    sql: ${TABLE}.input_tokens ;;
  }
  dimension: is_assigned {
    type: yesno
    sql: ${TABLE}.is_assigned ;;
  }
  dimension: is_processing {
    type: yesno
    sql: ${TABLE}.is_processing ;;
  }
  dimension_group: last_assigned {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.last_assigned_at ;;
  }
  dimension: last_assigned_by_user_id {
    type: number
    sql: ${TABLE}.last_assigned_by_user_id ;;
  }
  dimension: last_synced_api_message_id {
    type: string
    sql: ${TABLE}.last_synced_api_message_id ;;
  }
  dimension: output_tokens {
    type: number
    sql: ${TABLE}.output_tokens ;;
  }
  dimension: profile_id {
    type: number
    sql: ${TABLE}.profile_id ;;
  }
  dimension: protocol {
    type: string
    sql: ${TABLE}.protocol ;;
  }
  dimension_group: ticket_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.ticket_created_at ;;
  }
  dimension_group: ticket {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ticket_date ;;
  }
  dimension_group: ticket_finished {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.ticket_finished_at ;;
  }
  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
  measure: count {
    type: count
    drill_fields: [ticket_id]
  }
}
