view: clients {
  sql_table_name: dbo.Clients ;;

  dimension: client_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ClientId ;;
  }

  dimension: api_key {
    type: string
    sql: ${TABLE}.ApiKey ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      client_id,
      name,
      notifications.count,
      player_client_credit_history.count,
      player_client_credits.count,
      site_history.count,
      sites.count,
      user_history.count,
      users.count
    ]
  }
}
