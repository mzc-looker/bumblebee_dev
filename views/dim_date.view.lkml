view: dim_date {
  sql_table_name: dm.dim_date ;;

  dimension: month_id {
    type: number
    sql: ${TABLE}."month_id" ;;
  }

  dimension: month_nm {
    type: string
    sql: ${TABLE}."month_nm" ;;
  }

  dimension: year_id {
    type: number
    sql: ${TABLE}."year_id" ;;
  }

  dimension: year_nm {
    type: string
    sql: ${TABLE}."year_nm" ;;
  }

  dimension: yyyymmdd {
    type: string
    sql: ${TABLE}."yyyymmdd" ;;
  }

  dimension: yyyymmdd_id {
    type: number
    sql: ${TABLE}."yyyymmdd_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
