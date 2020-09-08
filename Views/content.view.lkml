view: content {
  sql_table_name: folder_access.content ;;

  dimension: id {
    primary_key: yes
    sql: ${TABLE}.content_id /;;
  }

  dimension: type {
    sql: ${TABLE}.content_type ;;
  }

  dimension: name {
    sql: ${TABLE}.content_name ;;
  }

  dimension: folder_id {
    sql: CAST(${TABLE}.folder_id AS STRING) ;;
  }
  measure: count {
    type: count
    drill_fields: [id, type, name]
  }
}
