connection: "zendesk-tincandev"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: tickets {
  join: collaborator_ids {
    type: left_outer
    sql_on: ${tickets.id} = ${collaborator_ids.ticket_id} ;;
    relationship: one_to_many
  }
  join: custom_fields {
    type: left_outer
    sql_on: ${tickets.id} = ${custom_fields.ticket_id} ;;
    relationship: one_to_many
  }
  join: fields {
    type: left_outer
    sql_on: ${tickets.id} = ${fields.ticket_id} ;;
    relationship: one_to_many
  }
  join: follower_ids {
    type: left_outer
    sql_on: ${tickets.id} = ${follower_ids.ticket_id} ;;
    relationship: one_to_many
  }
  join: tags {
    type: left_outer
    sql_on: ${tickets.id} = ${tags.ticket_id} ;;
    relationship: one_to_many
  }
}

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
