view: users {
#   sql_table_name: folder_access.user ;;

  derived_table: {
    sql: SELECT
            users.user_id  AS id,
            users.first_name  AS first_name,
            users.last_name  AS last_name,
            users.email  AS email,
            users__group_id.item AS group_id
        FROM folder_access.user  AS users
        LEFT JOIN UNNEST(users.group_id.list) AS users__group_id
        WHERE {% condition test %} groups.name {% endcondition %}
        ORDER BY 5;;
  }


  filter: test {
    type: string
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    link: {
      label: "pass to look"
      url: "/looks/1972?f[users.email]={{ users.email._value }} "
    }
    link: {
      label: "pass to dashboard"
      url: "/dashboards/748?folder_id={{ folder.folder_id }}"
    }
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: name {
    description: "first and last name"
    type: string
    sql: CONCAT(${first_name}, " ", ${last_name});;
  }

  dimension: group_id {
    sql: ${TABLE}.group_id;;
  }
  measure: count {
    type: count
  }
}

view: users__role_id {
  dimension: item {label:"role id"}
}

view: users__group_id {
  dimension: item {label:"group id"}
}
