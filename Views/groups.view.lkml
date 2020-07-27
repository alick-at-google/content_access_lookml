view: groups {
  sql_table_name: folder_access.groups ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: name {
    type: string
  }
  dimension: external_group_id {
    type: string
    sql: ${TABLE}.external_group_id ;;
  }

  dimension: user_count {
    type: number
    sql: ${TABLE}.user_count ;;
  }

}
