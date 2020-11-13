view: folder {
  # # You can specify the table name if it's different from the view name:
  sql_table_name: folder_access.folder ;;

  dimension: folder_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.folder_id ;;
    link: {
      label: "Link to Folder"
      url: "/folder/{{ value }}"
    }
  }

  dimension: name {
    label: "Folder Name"
    type: string
    sql: ${TABLE}.folder_name ;;
  }

  dimension: content_metadata_id {
    hidden: yes
    type: string
    sql: ${TABLE}.content_metadata_id ;;
  }
  dimension: parent_id {
    type: string
    sql: ${TABLE}.parent_id ;;
  }
  dimension: parent_name {
    type: string
    sql: ${TABLE}.parent_name ;;
  }
  dimension: child_count {
    type: number
    sql: ${TABLE}.child_count ;;
  }

}
