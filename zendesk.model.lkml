connection: "zendesk-tincandev"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: fields {}

explore: metadata {}

explore: tickets {}

explore: tickets_custom_fields {
  join: tickets {
    type: left_outer
    sql_on: ${tickets_custom_fields.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }
}

explore: tickets_fields {
  join: tickets {
    type: left_outer
    sql_on: ${tickets_fields.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }

  join: fields {
    type: left_outer
    sql_on: ${tickets_fields.field_id} = ${fields.field_id} ;;
    relationship: many_to_one
  }
}

explore: tickets_tags {
  join: tickets {
    type: left_outer
    sql_on: ${tickets_tags.ticket_id} = ${tickets.ticket_id} ;;
    relationship: many_to_one
  }
}
