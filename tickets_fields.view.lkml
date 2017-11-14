view: tickets_fields {
  sql_table_name: zendesk.tickets_fields ;;

  dimension: field_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.field_id ;;
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
    drill_fields: [tickets.ticket_id, fields.field_id, fields.name]
  }
}
