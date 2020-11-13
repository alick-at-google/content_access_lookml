view: user_folder {
  sql_table_name: folder_access.user_folders;;

  dimension: parent_id {}
  dimension: parent_name {
    html: {{ parent_id._rendered_value }} ;;
  }
  dimension: folder_id {
    type: number
    sql: CAST(${TABLE}.folder_id AS INT64);;
  }
  dimension: name {}
  dimension: folder_parent {}
  dimension: sub_id {}
  dimension: sub_name {}
  dimension: sub_parent {}
  dimension: sub1_id {}
  dimension: sub1_name {}
  dimension: sub1_parent {}
  dimension: sub2_id {}
  dimension: sub2_name {}
  dimension: sub2_parent{}

}
