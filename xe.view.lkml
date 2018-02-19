view: xe {
  sql_table_name: exchange_rates.xe ;;

  dimension_group: datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.datetime ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
