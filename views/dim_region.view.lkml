view: dim_region {
  sql_table_name: dm.dim_region ;;

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

  dimension: region_id {
    type: number
    sql: ${TABLE}."region_id" ;;
  }

  dimension: region_nm {
    type: string
    sql: ${TABLE}."region_nm" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
