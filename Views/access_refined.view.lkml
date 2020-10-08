include: "access.view"
view: +access {
  dimension: group_id {

#     type: string
    sql: ${TABLE}.group_id.list ;;
  }

  }
