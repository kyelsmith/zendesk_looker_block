view: tickets {
  sql_table_name: zendesk.tickets ;;

  dimension: ticket_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ticket_id ;;
  }

  dimension: allow_channelback {
    type: number
    sql: ${TABLE}.allow_channelback ;;
  }

  dimension: assignee_id {
    type: number
    sql: ${TABLE}.assignee_id ;;
  }

  dimension: brand_id {
    type: number
    sql: ${TABLE}.brand_id ;;
  }

  dimension: collaborator_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}.collaborator_ids ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: custom_fields {
    type: string
    sql: ${TABLE}.custom_fields ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: due_at {
    type: number
    sql: ${TABLE}.due_at ;;
  }

  dimension: external_id {
    type: number
    sql: ${TABLE}.external_id ;;
  }

  dimension: fields {
    type: string
    sql: ${TABLE}.fields ;;
  }

  dimension: follower_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}.follower_ids ;;
  }

  dimension: followup_ids {
    type: string
    sql: ${TABLE}.followup_ids ;;
  }

  dimension: forum_topic_id {
    type: number
    sql: ${TABLE}.forum_topic_id ;;
  }

  dimension_group: generated_timestamp {
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
    sql: ${TABLE}.generated_timestamp ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: has_incidents {
    type: number
    sql: ${TABLE}.has_incidents ;;
  }

  dimension: is_public {
    type: number
    sql: ${TABLE}.is_public ;;
  }

  dimension: metric_set {
    type: string
    sql: ${TABLE}.metric_set ;;
  }

  dimension: organization_id {
    type: number
    sql: ${TABLE}.organization_id ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: problem_id {
    type: number
    sql: ${TABLE}.problem_id ;;
  }

  dimension: raw_subject {
    type: string
    sql: ${TABLE}.raw_subject ;;
  }

  dimension: recipient {
    type: string
    sql: ${TABLE}.recipient ;;
  }

  dimension: requester_id {
    type: number
    sql: ${TABLE}.requester_id ;;
  }

  dimension: satisfaction_rating {
    type: string
    sql: ${TABLE}.satisfaction_rating ;;
  }

  dimension: sharing_agreement_ids {
    type: string
    sql: ${TABLE}.sharing_agreement_ids ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  dimension: submitter_id {
    type: number
    sql: ${TABLE}.submitter_id ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: ticket_form_id {
    type: number
    sql: ${TABLE}.ticket_form_id ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: via {
    type: string
    sql: ${TABLE}.via ;;
  }

  measure: count {
    type: count
    drill_fields: [ticket_id, tickets_custom_fields.count, tickets_fields.count, tickets_tags.count]
  }
}
