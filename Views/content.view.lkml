view: content {
  sql_table_name: folder_access.content ;;

  dimension: id {
    primary_key: yes
    sql: ${TABLE}.content_id;;
  }

  dimension: type {
    sql: ${TABLE}.content_type ;;
  }

  dimension: type_id {
    sql: CONCAT(${TABLE}.content_type, " ", ${TABLE}.content_id) ;;
  }

  dimension: name {
    sql: ${TABLE}.content_name ;;
    html: <a href="/{{ content.type }}/{{ content.id }}">{{ value | append: " - " | append: content.id }}</a> ;;
  }

  dimension: len_name{
    hidden: yes
    type: number
    sql: LENGTH(${TABLE}.content_name) ;;
  }

  dimension: folder_id {
    sql: CAST(${TABLE}.folder_id AS STRING) ;;
  }
  measure: count {
    type: count
    drill_fields: [folder.folder_id, folder.name, id, type, name]
  }
}
