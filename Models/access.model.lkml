connection: "@{connection}"


include: "/Views/*.view.lkml"                # include all views in the views/ folder in this project



explore: folder {
  join: access {
    fields: []
    sql_on: ${folder.folder_id} = ${access.folder_id} ;;
  }
  join: group_access {
    sql: LEFT JOIN UNNEST(${access.group_id}) as group_access ;;
  }
  join: user_access {
    sql: LEFT JOIN UNNEST(${access.user_id}) as user_access ;;
  }
  join: users {
    sql_on: ${user_access.users} = ${users.id} ;;
  }
  join: users__role_id {
    sql: LEFT JOIN UNNEST(users.role_id.list) as users__role_id ;;
  }
  join: users__group_id {
    sql: LEFT JOIN UNNEST(users.group_id.list) as users__group_id ;;
  }
  join: groups {
    required_joins: [users]
    type: left_outer
    sql_on: ${users__group_id.item} = ${groups.id} ;;
  }
  join: content {
    sql_on: ${content.folder_id} = ${folder.folder_id} ;;
  }
}

explore: user_folder {}
