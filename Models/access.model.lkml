connection: "@{connection}"

include: "/Views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: users {}

#an edit to break code

explore: access_group {
  join: access_user {
    relationship: many_to_many
    sql_on: ${access_group.folder_id} = ${access_user.folder_id};;
  }
  join: groups {
    relationship: many_to_one
    sql_on: ${groups.id} = ${access_group.group_id} ;;
  }
  join: users {
    relationship: many_to_one
    sql_on: ${users.group_id} = ${groups.id}  ;;
  }
  join: content {
    relationship: one_to_one
    sql_on: ${content.folder_id} = ${access_group.folder_id} ;;
  }
  join: folder {
    relationship: many_to_one
    sql_on: ${folder.folder_id} = ${content.folder_id}
    AND ${folder.folder_id} = "13";;
  }
}

explore: access_user {
  join: users {
    relationship: many_to_many
    sql_on: ${access_user.user_id} = ${users.id}  ;;
  }
  join: folder {
    relationship: many_to_one
    sql_on: ${access_user.folder_id} = ${folder.folder_id} ;;
  }
  join: content {
    relationship: many_to_one
    sql_on: ${folder.folder_id} = ${content.folder_id} ;;
  }
}

# explore: test {
#   join: groups {
#     sql_on: ${groups.id} = ${test.group_id} ;;
#   }
#   join: users
#     sql_on: ${users.id} = ${test.user_id} ;;
#   }
#   join: group_user{
#     from: groups
#     sql_on: ${groups.id} = users ;;
#   }
# }



explore: access {
  join: access_user__id {
    relationship: one_to_many
    type: inner
    sql: LEFT JOIN UNNEST(${access.user_id}) AS access_user__id;;
  }
  join: access_group__id {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${access.group_id}) AS access_group__id;;
  }
  join: folder {
    relationship: many_to_many
    sql_on: ${access.folder_id} = ${folder.folder_id} ;;
  }
  join: content {
    relationship: many_to_many
    sql_on: ${folder.folder_id} = ${content.folder_id} ;;
  }
  join: users {
    relationship: many_to_many
    sql_on: ${users.id} = ${access_user__id.item};;
  }
  join: groups {
    relationship: many_to_one
    sql_on: ${users__group_id.item} = ${groups.id} ;;
  }
  join: users__group_id {
    relationship: many_to_one
    sql: LEFT JOIN UNNEST(${users.group_id}) AS users__group_id ;;
  }
#   join: user_group {
#     from: groups
#     relationship: many_to_many
#     sql: ${users__group_id.item} = ${groups.id} ;;
#   }
}






explore: folder {
  join: content {
    relationship: many_to_many
    sql_on: ${folder.folder_id} = ${content.folder_id} ;;
  }
}
