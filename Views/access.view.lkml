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
#     type: string
    sql: ${TABLE}.user_id.list ;;
  }
#   dimension: group_id {

# #     type: string
#     sql: ${TABLE}.group_id.list ;;
#   }
}

view: access_user__id {
  dimension: item {}
}

view: access_group__id {
  dimension: item {}
}
