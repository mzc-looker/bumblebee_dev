view: dim_account {
  sql_table_name: dm.dim_account ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."account_id" ;;
  }

  dimension: account_nm {
    type: string
    sql: ${TABLE}."account_nm" ;;
  }

  dimension: company_id {
    type: string
    sql: ${TABLE}."company_id" ;;
  }

  dimension: company_nm {
    type: string
    sql: ${TABLE}."company_nm" ;;
  }

  dimension_group: insertdt {
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
    sql: ${TABLE}."insertdt" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
