- dashboard: user_content_access
  title: User Content Access
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Looks
    name: Looks
    model: access
    explore: access_group
    type: single_value
    fields: [content.count, content.type]
    filters:
      content.type: look
    sorts: [content.count desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    y_axes: []
    listen:
      Email: users.email
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Dashboards
    name: Dashboards
    model: access
    explore: access_group
    type: single_value
    fields: [content.count, content.type]
    filters:
      content.type: dashboard
    sorts: [content.count desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    y_axes: []
    listen:
      Email: users.email
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Folders I Have Access To - User
    name: Folders I Have Access To - User
    model: access
    explore: access_user
    type: looker_grid
    fields: [folder.folder_id, folder.name]
    filters: {}
    sorts: [folder.folder_id]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Email: users.email
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Group I'm In
    name: Group I'm In
    model: access
    explore: access_group
    type: looker_grid
    fields: [groups.id, groups.name]
    filters:
      groups.id: NOT NULL
    sorts: [groups.id]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_column_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Email: users.email
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Folders I Have Access To - Groups
    name: Folders I Have Access To - Groups
    model: access
    explore: access_group
    type: looker_grid
    fields: [access_group.group_id, groups.name, folder.folder_id, folder.name]
    filters:
      folder.folder_id: "-NULL"
    sorts: [access_group.group_id]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_column_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Email: users.email
    row: 6
    col: 8
    width: 8
    height: 6
  filters:
  - name: Email
    title: Email
    type: string_filter
    default_value: ''
    allow_multiple_values: true
    required: false
