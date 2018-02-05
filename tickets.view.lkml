view: tickets {
  sql_table_name: zendesk.tickets ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: allow_channelback {
    type: yesno
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}.due_at ;;
  }

  dimension: external_id {
    type: number
    sql: ${TABLE}.external_id ;;
  }

  dimension: forum_topic_id {
    type: number
    sql: ${TABLE}.forum_topic_id ;;
  }

  dimension: generated_timestamp {
    type: number
    sql: ${TABLE}.generated_timestamp ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: has_incidents {
    type: yesno
    sql: ${TABLE}.has_incidents ;;
  }

  dimension: is_public {
    type: yesno
    sql: ${TABLE}.is_public ;;
  }

  dimension: z_setagent_wait_time_in_minutesbusiness {
    type: number
    sql: ${TABLE}.`metric_set-agent_wait_time_in_minutes-business` ;;
  }

  dimension: z_setagent_wait_time_in_minutescalendar {
    type: number
    sql: ${TABLE}.`metric_set-agent_wait_time_in_minutes-calendar` ;;
  }

  dimension_group: z_setassigned {
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
    sql: ${TABLE}.`metric_set-assigned_at` ;;
  }

  dimension: z_setassignee_stations {
    type: number
    sql: ${TABLE}.`metric_set-assignee_stations` ;;
  }

  dimension_group: z_setassignee_updated {
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
    sql: ${TABLE}.`metric_set-assignee_updated_at` ;;
  }

  dimension_group: z_setcreated {
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
    sql: ${TABLE}.`metric_set-created_at` ;;
  }

  dimension: z_setfirst_resolution_time_in_minutesbusiness {
    type: number
    sql: ${TABLE}.`metric_set-first_resolution_time_in_minutes-business` ;;
  }

  dimension: z_setfirst_resolution_time_in_minutescalendar {
    type: number
    sql: ${TABLE}.`metric_set-first_resolution_time_in_minutes-calendar` ;;
  }

  dimension: z_setfull_resolution_time_in_minutesbusiness {
    type: number
    sql: ${TABLE}.`metric_set-full_resolution_time_in_minutes-business` ;;
  }

  dimension: z_setfull_resolution_time_in_minutescalendar {
    type: number
    sql: ${TABLE}.`metric_set-full_resolution_time_in_minutes-calendar` ;;
  }

  dimension: z_setgroup_stations {
    type: number
    sql: ${TABLE}.`metric_set-group_stations` ;;
  }

  dimension: z_setid {
    type: number
    value_format_name: id
    sql: ${TABLE}.`metric_set-id` ;;
  }

  dimension_group: z_setinitially_assigned {
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
    sql: ${TABLE}.`metric_set-initially_assigned_at` ;;
  }

  dimension_group: z_setlatest_comment_added {
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
    sql: ${TABLE}.`metric_set-latest_comment_added_at` ;;
  }

  dimension: z_seton_hold_time_in_minutesbusiness {
    type: number
    sql: ${TABLE}.`metric_set-on_hold_time_in_minutes-business` ;;
  }

  dimension: z_seton_hold_time_in_minutescalendar {
    type: number
    sql: ${TABLE}.`metric_set-on_hold_time_in_minutes-calendar` ;;
  }

  dimension: z_setreopens {
    type: number
    sql: ${TABLE}.`metric_set-reopens` ;;
  }

  dimension: z_setreplies {
    type: number
    sql: ${TABLE}.`metric_set-replies` ;;
  }

  dimension: z_setreply_time_in_minutesbusiness {
    type: number
    sql: ${TABLE}.`metric_set-reply_time_in_minutes-business` ;;
  }

  dimension: z_setreply_time_in_minutescalendar {
    type: number
    sql: ${TABLE}.`metric_set-reply_time_in_minutes-calendar` ;;
  }

  dimension_group: z_setrequester_updated {
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
    sql: ${TABLE}.`metric_set-requester_updated_at` ;;
  }

  dimension: z_setrequester_wait_time_in_minutesbusiness {
    type: number
    sql: ${TABLE}.`metric_set-requester_wait_time_in_minutes-business` ;;
  }

  dimension: z_setrequester_wait_time_in_minutescalendar {
    type: number
    sql: ${TABLE}.`metric_set-requester_wait_time_in_minutes-calendar` ;;
  }

  dimension_group: z_setsolved {
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
    sql: ${TABLE}.`metric_set-solved_at` ;;
  }

  dimension: solved {
    type: yesno
    sql: ${z_setsolved_date} IS NOT NULL ;;
  }

  dimension_group: z_setstatus_updated {
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
    sql: ${TABLE}.`metric_set-status_updated_at` ;;
  }

  dimension_group: z_setupdated {
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
    sql: ${TABLE}.`metric_set-updated_at` ;;
  }

  dimension: z_seturl {
    type: string
    sql: ${TABLE}.`metric_set-url` ;;
  }

  dimension: organization_id {
    type: number
    sql: ${TABLE}.organization_id ;;
  }

  dimension: priority {
    type: string
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

  dimension: satisfaction_ratingscore {
    type: string
    sql: ${TABLE}.`satisfaction_rating-score` ;;
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

  dimension: ticket_form_id {
    type: number
    sql: ${TABLE}.ticket_form_id ;;
  }

  dimension: type {
    type: string
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

  dimension: viachannel {
    type: string
    sql: ${TABLE}.`via-channel` ;;
  }

  dimension: viasourcefrom {
    type: string
    sql: ${TABLE}.`via-source-from` ;;
  }

  dimension: viasourcerel {
    type: string
    sql: ${TABLE}.`via-source-rel` ;;
  }

  dimension: viasourceto {
    type: string
    sql: ${TABLE}.`via-source-to` ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      subject,
      created_date,
      assignee_id,
      requester_id,
      organization_id
    ]
  }
}
