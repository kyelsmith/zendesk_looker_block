view: tickets_tags {
  sql_table_name: zendesk.tickets_tags ;;

  dimension: tag {
    type: string
    sql: ${TABLE}.tag ;;
  }

  dimension: ticket_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticket_id ;;
  }

  measure: count {
    type: count
    drill_fields: [tickets.ticket_id]
  }
}
