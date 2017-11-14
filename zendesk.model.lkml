connection: "zendesk-tincandev"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: collaborator_ids {
  join: tickets {
    type: left_outer
    sql_on: ${collaborator_ids.ticket_id} = ${tickets.id} ;;
    relationship: many_to_one
  }
}

explore: custom_fields {
  join: tickets {
    type: left_outer
    sql_on: ${custom_fields.ticket_id} = ${tickets.id} ;;
    relationship: many_to_one
  }
}

explore: fields {
  join: tickets {
    type: left_outer
    sql_on: ${fields.ticket_id} = ${tickets.id} ;;
    relationship: many_to_one
  }
}

explore: follower_ids {
  join: tickets {
    type: left_outer
    sql_on: ${follower_ids.ticket_id} = ${tickets.id} ;;
    relationship: many_to_one
  }
}

explore: metadata {}

explore: tags {
  join: tickets {
    type: left_outer
    sql_on: ${tags.ticket_id} = ${tickets.id} ;;
    relationship: many_to_one
  }
}

explore: tickets {}
