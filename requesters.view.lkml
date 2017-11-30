view: requesters {
  sql_table_name: zendesk.users ;;

  dimension: requester_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: requester_email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: requester_name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: requester_organization_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.organization_id ;;
  }

  dimension: requester_role {
    type: string
    sql: ${TABLE}.role ;;
  }

  dimension: requester_url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [requester_id, requester_name, requester_email, requester_organization_id, requester_role, requester_url]
  }
}
