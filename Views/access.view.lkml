view: access {
  sql_table_name: folder_access.folder_access_df ;;
  dimension: folder_id {
    primary_key: yes
    type: string
    sql: CAST(${TABLE}.folder_id AS STRING);;
  }
  #test commit

  dimension: user_id {
    hidden: yes
    sql: ${TABLE}.user_id.list ;;
  }
  dimension: group_id {
    hidden: yes
    sql: ${TABLE}.group_id.list ;;
  }
}

view: user_access {
  dimension: users { sql: ${TABLE}.item ;; }
}

view: group_access {
  dimension: groups {  sql: ${TABLE}.item ;; }
}
