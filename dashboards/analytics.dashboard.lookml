---
- dashboard: analytics
  title: 'Data Security: Shared Template Dashboard'
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: EU9MxVoyJiidBm9oCxVVhR
  elements:
  - title: Daily Sales
    name: Daily Sales
    model: external_data_model
    explore: order_items
    type: looker_line
    fields: [order_items.total_sale_price, order_items.created_date]
    fill_fields: [order_items.created_date]
    filters:
      order_items.created_date: 365 days
    sorts: [order_items.created_date desc]
    limit: 500
    column_limit: 50
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Created Date: order_items.created_date
      Brand: products.brand
    row: 0
    col: 8
    width: 16
    height: 7
  - title: Sales by Category
    name: Sales by Category
    model: external_data_model
    explore: order_items
    type: looker_pie
    fields: [order_items.total_sale_price, products.category]
    filters:
      order_items.created_date: 365 days
    sorts: [order_items.total_sale_price desc]
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labVal
    inner_radius: 50
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    listen:
      Created Date: order_items.created_date
      Brand: products.brand
    row: 2
    col: 0
    width: 8
    height: 5
  - title: Top Products
    name: Top Products
    model: external_data_model
    explore: order_items
    type: looker_grid
    fields: [order_items.total_sale_price, order_items.order_count, products.name]
    filters:
      order_items.created_date: 365 days
    sorts: [order_items.total_sale_price desc 0]
    limit: 500
    column_limit: 50
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
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      products.name: 350
    series_cell_visualizations:
      order_items.total_sale_price:
        is_active: true
      order_items.order_count:
        is_active: true
      order_items.total_gross_margin:
        is_active: true
    hidden_pivots: {}
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
    defaults_version: 1
    listen:
      Created Date: order_items.created_date
      Brand: products.brand
    row: 7
    col: 0
    width: 24
    height: 7
  - title: Total Sales
    name: Total Sales
    model: external_data_model
    explore: order_items
    type: single_value
    fields: [order_items.total_sale_price]
    filters:
      order_items.created_date: 365 days
    sorts: [order_items.total_sale_price desc]
    limit: 10
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
    value_labels: legend
    label_type: labVal
    inner_radius: 50
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    listen:
      Created Date: order_items.created_date
      Brand: products.brand
    row: 0
    col: 0
    width: 8
    height: 2
  - title: Top Users
    name: Top Users
    model: external_data_model
    explore: order_items
    type: looker_grid
    fields: [order_items.total_sale_price, order_items.order_count, users.id, users.name,
      users.ssn_last_4, users.email, users.city]
    filters:
      order_items.created_date: 365 days
      products.brand: ''
    sorts: [order_items.order_count desc, order_items.total_sale_price desc]
    limit: 500
    column_limit: 50
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
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      order_items.total_sale_price:
        is_active: true
      order_items.order_count:
        is_active: true
      order_items.total_gross_margin:
        is_active: true
    hidden_pivots: {}
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
    defaults_version: 1
    listen:
      Created Date: order_items.created_date
      Brand: products.brand
    row: 14
    col: 0
    width: 24
    height: 7
  - title: Order Detail Table
    name: Order Detail Table
    model: external_data_model
    explore: order_items
    type: looker_grid
    fields: [order_items.id, order_items.status, order_items.created_date, order_items.sale_price,
      order_items.customer_a_custom_1, order_items.customer_a_custom_2, order_items.customer_b_custom_1,
      order_items.customer_b_custom_2]
    sorts: [order_items.created_date desc]
    limit: 500
    column_limit: 50
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
    truncate_header: false
    minimum_column_width: 75
    hidden_pivots: {}
    truncate_column_names: false
    defaults_version: 1
    listen:
      Created Date: order_items.created_date
    row: 21
    col: 0
    width: 24
    height: 6
  filters:
  - name: Created Date
    title: Created Date
    type: field_filter
    default_value: 365 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: external_data_model
    explore: order_items
    listens_to_filters: []
    field: order_items.created_date
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: external_data_model
    explore: order_items
    listens_to_filters: []
    field: products.brand
