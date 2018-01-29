view: ticket_forms {
  sql_table_name: zendesk.ticket_forms ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.`ticket_forms-id` ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.`ticket_forms-active` ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.`ticket_forms-created_at` ;;
  }

  dimension: default {
    type: yesno
    sql: ${TABLE}.`ticket_forms-default` ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.`ticket_forms-display_name` ;;
  }

  dimension: end_user_visible {
    type: yesno
    sql: ${TABLE}.`ticket_forms-end_user_visible` ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.`ticket_forms-name` ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.`ticket_forms-position` ;;
  }

  dimension: raw_display_name {
    type: string
    sql: ${TABLE}.`ticket_forms-raw_display_name` ;;
  }

  dimension: raw_name {
    type: string
    sql: ${TABLE}.`ticket_forms-raw_name` ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.`ticket_forms-updated_at` ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.`ticket_forms-url` ;;
  }

  measure: count {
    type: count
    drill_fields: [id, raw_name, name, display_name, raw_display_name, active, created_time, updated_time]
  }
}
