# - dashboard: folder_content_access
#   title: Folder Content Access
#   layout: newspaper
#   preferred_viewer: dashboards
#   elements:
#   - title: Group Info
#     name: Group Info
#     model: access
#     explore: access_group
#     type: looker_grid
#     fields: [access_group.folder_id, groups.name, users.id, users.name, users.email]
#     filters: {}
#     sorts: [users.id]
#     limit: 500
#     query_timezone: America/Los_Angeles
#     show_view_names: false
#     show_row_numbers: true
#     transpose: false
#     truncate_text: true
#     hide_totals: false
#     hide_row_totals: false
#     size_to_fit: true
#     table_theme: white
#     limit_displayed_rows: false
#     enable_conditional_formatting: false
#     header_text_alignment: left
#     header_font_size: 12
#     rows_font_size: 12
#     conditional_formatting_include_totals: false
#     conditional_formatting_include_nulls: false
#     defaults_version: 1
#     hidden_fields: [access_group.folder_id]
#     series_column_widths:
#       groups.name: 175
#     y_axes: []
#     listen:
#       Folder ID: access_group.folder_id
#     row: 4
#     col: 16
#     width: 8
#     height: 6
#   - title: User Info
#     name: User Info
#     model: access
#     explore: access_user
#     type: looker_grid
#     fields: [access_user.folder_id, access_user.user_id, users.id, users.name, users.email]
#     filters: {}
#     sorts: [access_user.folder_id]
#     limit: 500
#     query_timezone: America/Los_Angeles
#     show_view_names: false
#     show_row_numbers: true
#     transpose: false
#     truncate_text: true
#     hide_totals: false
#     hide_row_totals: false
#     size_to_fit: true
#     table_theme: white
#     limit_displayed_rows: false
#     enable_conditional_formatting: false
#     header_text_alignment: left
#     header_font_size: 12
#     rows_font_size: 12
#     conditional_formatting_include_totals: false
#     conditional_formatting_include_nulls: false
#     hidden_fields: [access_user.user_id, access_user.folder_id]
#     defaults_version: 1
#     series_column_widths:
#       users.id: 50
#     y_axes: []
#     listen:
#       Folder ID: access_user.folder_id
#     row: 0
#     col: 16
#     width: 8
#     height: 4
#   - title: Looks
#     name: Looks
#     model: access
#     explore: access_user
#     type: single_value
#     fields: [access_user.folder_id, content.count]
#     filters:
#       content.type: look
#     sorts: [access_user.folder_id]
#     limit: 5000
#     column_limit: 50
#     dynamic_fields: [{measure: count_of_id, based_on: content.id, expression: '',
#         label: Count of ID, type: count_distinct, _kind_hint: measure, _type_hint: number},
#       {measure: count_of_id_2, based_on: content.id, expression: '', label: Count
#           of ID, type: count_distinct, _kind_hint: measure, _type_hint: number}]
#     custom_color_enabled: true
#     show_single_value_title: true
#     show_comparison: false
#     comparison_type: value
#     comparison_reverse_colors: false
#     show_comparison_label: true
#     enable_conditional_formatting: false
#     conditional_formatting_include_totals: false
#     conditional_formatting_include_nulls: false
#     show_view_names: false
#     show_row_numbers: true
#     transpose: false
#     truncate_text: true
#     hide_totals: false
#     hide_row_totals: false
#     size_to_fit: true
#     table_theme: white
#     limit_displayed_rows: false
#     header_text_alignment: left
#     header_font_size: 12
#     rows_font_size: 12
#     defaults_version: 1
#     hidden_fields: [access_user.folder_id]
#     series_types: {}
#     y_axes: []
#     listen:
#       Folder ID: access_user.folder_id
#     row: 4
#     col: 0
#     width: 8
#     height: 6
#   - title: Dashboards
#     name: Dashboards
#     model: access
#     explore: access_user
#     type: single_value
#     fields: [access_user.folder_id, content.count, content.type]
#     filters:
#       content.type: dashboard
#     sorts: [access_user.folder_id]
#     limit: 5000
#     column_limit: 50
#     dynamic_fields: [{measure: count_of_id, based_on: content.id, expression: '',
#         label: Count of ID, type: count_distinct, _kind_hint: measure, _type_hint: number},
#       {measure: count_of_id_2, based_on: content.id, expression: '', label: Count
#           of ID, type: count_distinct, _kind_hint: measure, _type_hint: number}]
#     custom_color_enabled: true
#     show_single_value_title: true
#     show_comparison: false
#     comparison_type: value
#     comparison_reverse_colors: false
#     show_comparison_label: true
#     enable_conditional_formatting: false
#     conditional_formatting_include_totals: false
#     conditional_formatting_include_nulls: false
#     show_view_names: false
#     show_row_numbers: true
#     transpose: false
#     truncate_text: true
#     hide_totals: false
#     hide_row_totals: false
#     size_to_fit: true
#     table_theme: white
#     limit_displayed_rows: false
#     header_text_alignment: left
#     header_font_size: 12
#     rows_font_size: 12
#     defaults_version: 1
#     hidden_fields: [access_user.folder_id]
#     series_types: {}
#     y_axes: []
#     listen:
#       Folder ID: access_user.folder_id
#     row: 4
#     col: 8
#     width: 8
#     height: 6
#   - title: Folder Name
#     name: Folder Name
#     model: access
#     explore: access_user
#     type: single_value
#     fields: [folder.name]
#     filters: {}
#     sorts: [folder.name]
#     limit: 500
#     column_limit: 50
#     custom_color_enabled: true
#     show_single_value_title: true
#     show_comparison: false
#     comparison_type: value
#     comparison_reverse_colors: false
#     show_comparison_label: true
#     enable_conditional_formatting: false
#     conditional_formatting_include_totals: false
#     conditional_formatting_include_nulls: false
#     x_axis_gridlines: false
#     y_axis_gridlines: true
#     show_view_names: false
#     show_y_axis_labels: true
#     show_y_axis_ticks: true
#     y_axis_tick_density: default
#     y_axis_tick_density_custom: 5
#     show_x_axis_label: true
#     show_x_axis_ticks: true
#     y_axis_scale_mode: linear
#     x_axis_reversed: false
#     y_axis_reversed: false
#     plot_size_by_field: false
#     trellis: ''
#     stacking: ''
#     limit_displayed_rows: false
#     legend_position: center
#     point_style: none
#     show_value_labels: false
#     label_density: 25
#     x_axis_scale: auto
#     y_axis_combined: true
#     ordering: none
#     show_null_labels: false
#     show_totals_labels: false
#     show_silhouette: false
#     totals_color: "#808080"
#     defaults_version: 1
#     series_types: {}
#     hidden_fields: []
#     y_axes: []
#     listen:
#       Folder ID: folder.folder_id
#     row: 0
#     col: 0
#     width: 16
#     height: 4
#   - name: test
#     type: text
#     title_text: test
#     body_text: <p>Some Markdown text with <span style="color:blue">some <em>blue</em>
#       text</span>.</p>
#     row: 10
#     col: 0
#     width: 8
#     height: 6
#   filters:
#   - name: Folder ID
#     title: Folder ID
#     type: number_filter
#     default_value: ''
#     allow_multiple_values: true
#     required: false
