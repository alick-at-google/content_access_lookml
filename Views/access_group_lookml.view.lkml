view: access_group_lookml {
  sql_table_name: folder_access.folder_access_df ;;

  dimension: folder_id {
    type: number
    sql: ${TABLE}.folder_id ;;
  }

  dimension: group_id {
    hidden: yes
    sql: ${TABLE}.group_id.list ;;
  }

  dimension: user_id {
    hidden: yes
    sql: ${TABLE}.user_id.list ;;
  }

}

view: access__group {
  dimension: group_id {
    sql: ${TABLE}.item ;;
  }
}


view: access__user {
  dimension: user_id {
    sql: ${TABLE}.item ;;
  }
}
