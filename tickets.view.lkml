view: tickets {
  sql_table_name: zendesk.tickets ;;

  dimension: ticket_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ticket_id ;;
  }

  dimension: assignee_id {
    type: number
    sql: ${TABLE}.assignee_id ;;
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: organization_id {
    type: number
    sql: ${TABLE}.organization_id ;;
  }

  dimension: problem_id {
    type: number
    sql: ${TABLE}.problem_id ;;
  }

  dimension: requester_id {
    type: number
    sql: ${TABLE}.requester_id ;;
  }

  dimension: satisfaction_rating {
    type: string
    sql: ${TABLE}.satisfaction_rating ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: submitter_id {
    type: number
    sql: ${TABLE}.submitter_id ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [ticket_id, tickets_custom_fields.count, tickets_fields.count, tickets_tags.count]
  }
}
