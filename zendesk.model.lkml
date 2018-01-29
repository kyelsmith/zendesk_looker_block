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
  join: assignees {
    type: left_outer
    sql_on:  ${tickets.assignee_id} = ${assignees.assignee_id} ;;
    relationship: one_to_many
  }
  join: groups {
    type: left_outer
    sql_on:  ${tickets.group_id} = ${groups.id} ;;
    relationship: one_to_many
  }
  join: requesters {
    type: left_outer
    sql_on:  ${tickets.requester_id} = ${requesters.requester_id} ;;
    relationship: one_to_many
  }
  join: ticket_forms {
    type: left_outer
    sql_on:  ${tickets.ticket_form_id} = ${ticket_forms.id} ;;
    relationship: one_to_many
  }
  join: submitters {
    type: left_outer
    sql_on:  ${tickets.submitter_id} = ${submitters.submitter_id} ;;
    relationship: one_to_many
  }
  #join: users {
  #  type: left_outer
  #  sql_on: ${tickets.assignee_id} = ${users.id} OR ${tickets.requester_id} = ${users.id} OR ${tickets.submitter_id} ;;
  #  relationship: many_to_one
  #}
  join: organizations {
    type: left_outer
    sql_on: ${assignees.assignee_organization_id} = ${organizations.id} OR ${requesters.requester_organization_id} = ${organizations.id} OR ${submitters.submitter_organization_id} = ${organizations.id} ;;
    relationship: one_to_many
  }
}
