view: assignees {
  sql_table_name: zendesk.users ;;

  dimension: assignee_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: assignee_email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: assignee_name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: assignee_organization_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.organization_id ;;
  }

  dimension: assignee_role {
    type: string
    sql: ${TABLE}.role ;;
  }

  dimension: assignee_url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [assignee_id, assignee_email, assignee_name, assignee_organization_id, assignee_role, assignee_url]
  }
}
