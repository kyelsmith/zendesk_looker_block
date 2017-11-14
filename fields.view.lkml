view: fields {
  sql_table_name: zendesk.fields ;;

  dimension: field_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.field_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [field_id, name, tickets_fields.count]
  }
}
