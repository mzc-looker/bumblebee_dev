view: dim_product {
  sql_table_name: dm.dim_product ;;

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
  }

  dimension: cost_type {
    type: string
    sql: ${TABLE}."cost_type" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: etc1 {
    type: string
    sql: ${TABLE}."etc1" ;;
  }

  dimension: etc2 {
    type: string
    sql: ${TABLE}."etc2" ;;
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

  dimension: instance_type_desc {
    type: string
    sql: ${TABLE}."instance_type_desc" ;;
  }

  dimension: instance_type_usage {
    type: string
    sql: ${TABLE}."instance_type_usage" ;;
  }

  dimension: operation {
    type: string
    sql: ${TABLE}."operation" ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}."product" ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}."product_id" ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}."product_type" ;;
  }

  dimension: usage_type {
    type: string
    sql: ${TABLE}."usage_type" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
