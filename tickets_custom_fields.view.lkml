view: tickets_custom_fields {
  sql_table_name: zendesk.tickets_custom_fields ;;

  dimension: custom_field_id {
    type: number
    sql: ${TABLE}.custom_field_id ;;
  }

  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [tickets.ticket_id]
  }
}
