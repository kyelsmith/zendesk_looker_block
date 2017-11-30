view: submitters {
 sql_table_name: zendesk.users ;;

  dimension: submitter_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: submitter_email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: submitter_name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: submitter_organization_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.organization_id ;;
  }

  dimension: submitter_role {
    type: string
    sql: ${TABLE}.role ;;
  }

  dimension: submitter_url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [submitter_id, submitter_email, submitter_name, submitter_organization_id, submitter_role, submitter_url]
  }
}
