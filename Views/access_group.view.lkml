view: access_group {
  derived_table: {
    sql: SELECT
              CAST(access.folder_id AS STRING) AS access_folder_id,
              access_group__id.item AS access_group__id_item
         FROM folder_access.folder_access_df  AS access
         LEFT JOIN UNNEST(access.group_id.list) AS access_group__id
          GROUP BY 1,2 ;;
  }


  filter: filter_test {
    type: string
  }

  dimension: folder_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.access_folder_id ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.access_group__id_item ;;
  }

}
