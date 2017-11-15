view: portal_sites {
  sql_table_name: dbo.Sites ;;

  dimension: site_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SiteId ;;
  }

  dimension: additional_tax_percent {
    type: number
    sql: ${TABLE}.AdditionalTaxPercent ;;
  }

  dimension: booking_agree_terms {
    type: string
    sql: ${TABLE}.BookingAgreeTerms ;;
  }

  dimension: booking_change_date_minutes {
    type: number
    sql: ${TABLE}.BookingChangeDateMinutes ;;
  }

  dimension: booking_requires_phone {
    type: string
    sql: ${TABLE}.BookingRequiresPhone ;;
  }

  dimension_group: calendar_start {
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
    sql: ${TABLE}.CalendarStart ;;
  }

  dimension: client_html_template {
    type: string
    sql: ${TABLE}.ClientHtmlTemplate ;;
  }

  dimension: client_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ClientId ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.Code ;;
  }

  dimension: contact_email {
    type: string
    sql: ${TABLE}.ContactEmail ;;
  }

  dimension: contact_first_name {
    type: string
    sql: ${TABLE}.ContactFirstName ;;
  }

  dimension: contact_last_name {
    type: string
    sql: ${TABLE}.ContactLastName ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.Country ;;
  }

  dimension: currency_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.CurrencyTypeId ;;
  }

  dimension: dashboard_timeout {
    type: number
    sql: ${TABLE}.DashboardTimeout ;;
  }

  dimension: default_game_server_id {
    type: number
    sql: ${TABLE}.DefaultGameServerId ;;
  }

  dimension: development_site {
    type: string
    sql: ${TABLE}.DevelopmentSite ;;
  }

  dimension: email_template {
    type: string
    sql: ${TABLE}.EmailTemplate ;;
  }

  dimension: first_day_of_week {
    type: string
    sql: ${TABLE}.FirstDayOfWeek ;;
  }

  dimension: height_measurement_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.HeightMeasurementTypeId ;;
  }

  dimension: hide_player_names {
    type: string
    sql: ${TABLE}.HidePlayerNames ;;
  }

  dimension: language_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.LanguageTypeId ;;
  }

  dimension: launcher_version {
    type: string
    sql: ${TABLE}.LauncherVersion ;;
  }

  dimension: map_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.MapId ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
    link: {
      label: "Site Lookup Dashboard"
      url: "https://zerolatency.au.looker.com/dashboards/2?Site={{value}}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension_group: open {
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
    sql: ${TABLE}.OpenDate ;;
  }

  dimension: payment_gateway_json {
    type: string
    sql: ${TABLE}.PaymentGatewayJson ;;
  }

  dimension: reply_email {
    type: string
    sql: ${TABLE}.ReplyEmail ;;
  }

  dimension: site_address {
    type: string
    sql: ${TABLE}.SiteAddress ;;
  }

  dimension: site_status_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SiteStatusTypeId ;;
  }

  dimension: site_title {
    type: string
    sql: ${TABLE}.SiteTitle ;;
  }

  dimension: test_site {
    type: string
    sql: ${TABLE}.TestSite ;;
  }

  dimension: time_zone_id {
    type: string
    sql: ${TABLE}.TimeZoneId ;;
  }

#HARDCODED UTC OFFSET TIMES
#these will be added to the local_created_date field in the bookings table
  dimension: utc_offset {
    type: string
    sql: CASE
             WHEN TimeZoneId = 'AUS Eastern Standard Time' THEN '+10:00'
             WHEN TimeZoneId = 'E. Australia Standard Time' THEN '+10:00'
             WHEN TimeZoneId = 'Tokyo Standard Time' THEN '+09:00'
             WHEN TimeZoneId = 'Pacific Standard Time' THEN '-07:00'
             WHEN TimeZoneId = 'Romance Standard Time' THEN '+01:00'
             WHEN TimeZoneId = 'Eastern Standard Time' THEN '-05:00'
             WHEN TimeZoneId = 'Central Standard Time' THEN '-06:00'
             WHEN TimeZoneId = 'US Mountain Standard Time' THEN '-07:00'
             WHEN TimeZoneId = 'Mountain Standard Time' THEN '-07:00'
             WHEN TimeZoneId = 'Central Standard Time (Mexico)' THEN '-06:00'
          END;;
  }

  dimension: tracking_version {
    type: string
    sql: ${TABLE}.TrackingVersion ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      site_id,
      name,
      contact_first_name,
      contact_last_name,
      clients.client_id,
      clients.name,
      site_status_types.site_status_type_id,
      site_status_types.name,
      language_types.language_type_id,
      height_measurement_types.height_measurement_type_id,
      height_measurement_types.name,
      maps.map_id,
      maps.name,
      currency_types.currency_type_id,
      currency_types.name,
      booking_concession_types.count,
      booking_history.count,
      booking_notes.count,
      bookings.count,
      code_voucher_batches.count,
      code_vouchers.count,
      email_templates.count,
      errors.count,
      fault_log_analysis.count,
      fault_log_notification_subscriptions.count,
      fault_logs.count,
      fault_logs_archive.count,
      feedback.count,
      game_results.count,
      game_spaces.count,
      gift_vouchers.count,
      kb_feedback.count,
      kb_support_tickets.count,
      localisation_site_content.count,
      notifications.count,
      open_times.count,
      packages.count,
      player_notes.count,
      price_tier_types.count,
      product_history.count,
      products.count,
      promo_codes.count,
      site_game_duration_overrides_old.count,
      site_games.count,
      site_history.count,
      site_insights.count,
      site_languages.count,
      site_pages.count,
      tier_schedules.count,
      top_game_scores.count,
      top_game_stats.count,
      user_site_access.count
    ]
  }
}
