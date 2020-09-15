view: access_user {
  derived_table: {
    sql: SELECT
              CAST(access.folder_id AS STRING) AS access_folder_id,
              access_user__id.item AS access_user__id_item
         FROM folder_access.folder_access_df  AS access
         LEFT JOIN UNNEST(access.user_id.list) AS access_user__id
          GROUP BY 1,2 ;;
  }
  #commit

  dimension: folder_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.access_folder_id ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.access_user__id_item ;;
  }
  }
