view: dim_user {
  sql_table_name: `gold_cadu.dim_user` ;;
  drill_fields: [user_id]

  dimension: user_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.user_id ;;
  }
  dimension: default_clock_in {
    type: string
    sql: ${TABLE}.default_clock_in ;;
  }
  dimension: default_clock_out {
    type: string
    sql: ${TABLE}.default_clock_out ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: has_flexible_schedule {
    type: yesno
    sql: ${TABLE}.has_flexible_schedule ;;
  }
  dimension: must_change_password {
    type: yesno
    sql: ${TABLE}.must_change_password ;;
  }
  dimension: opa_id {
    type: string
    sql: ${TABLE}.opa_id ;;
  }
  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
  }
  dimension_group: user_created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.user_created_at ;;
  }
  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }
  measure: count {
    type: count
    drill_fields: [user_id, user_name]
  }
}
