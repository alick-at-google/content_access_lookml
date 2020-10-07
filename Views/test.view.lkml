view: test {
  derived_table: {
    sql: SELECT
              CAST(access.folder_id AS STRING) AS access_folder_id,
              access_user__id.item AS access_user__id_item,
              access_group__id.item AS access_group__id_item
         FROM folder_access.folder_access_df  AS access
         LEFT JOIN UNNEST(access.group_id.list) AS access_group__id
         LEFT JOIN UNNEST(access.user_id.list) AS access_user__id
          GROUP BY 1,2,3 ;;
  }

  dimension: folder_id {
    type: number
    sql: CAST(${TABLE}.access_folder_id AS INT64);;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.access_group__id_item ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.access_user__id_item;;
  }

}
