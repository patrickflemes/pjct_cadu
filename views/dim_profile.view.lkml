view: dim_profile {
  sql_table_name: `gold_cadu.dim_profile` ;;
  drill_fields: [profile_id]

  dimension: profile_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.profile_id ;;
  }
  dimension: enabled_tools {
    type: string
    sql: ${TABLE}.enabled_tools ;;
  }
  dimension: greeting_template {
    type: string
    sql: ${TABLE}.greeting_template ;;
  }
  dimension: inactivity_warning_enabled {
    type: yesno
    sql: ${TABLE}.inactivity_warning_enabled ;;
  }
  dimension: is_default {
    type: yesno
    sql: ${TABLE}.is_default ;;
  }
  dimension_group: profile_created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.profile_created_at ;;
  }
  dimension: profile_name {
    type: string
    sql: ${TABLE}.profile_name ;;
  }
  dimension: support_notes {
    type: string
    sql: ${TABLE}.support_notes ;;
  }
  dimension: system_message_content {
    type: string
    sql: ${TABLE}.system_message_content ;;
  }
  dimension: system_message_role {
    type: string
    sql: ${TABLE}.system_message_role ;;
  }
  measure: count {
    type: count
    drill_fields: [profile_id, profile_name]
  }
}
