view: users {
  sql_table_name: folder_access.user ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    hidden: yes
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: last_name {
    hidden: yes
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: name {
    description: "first and last name"
    type: string
    sql: CONCAT(${first_name}, " ", ${last_name});;
  }

  dimension: group_id {
    hidden: yes
    sql: ${TABLE}.group_id.list;;
  }
  dimension: role_id {
    hidden: yes
    sql: ${TABLE}.role_id.list;;
  }
  measure: count {
    type: count
    link: {
      label: "Users in Group"
      url: "/looks/1?f[groups.id]={{ groups.id._value }}"
    }
  }
}

view: users__role_id {
  dimension: item {
    label:"Role ID"
    sql: ${TABLE}.item;;
    }
}

view: users__group_id {
  dimension: item {
    label:"Group ID"
    sql: ${TABLE}.item;;
    }
}
