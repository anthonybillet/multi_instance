- dashboard: ecommerce_overview
  title: "eCommerce Comprehensive Overview"
  layout: newspaper
  preferred_viewer: dashboards-next
  description: "A comprehensive look at Sales, Inventory, Customers, and Operations based on the Look_ecomm dataset."

  elements:
    # -----------------------------------------------------------
    # SECTION 1: EXECUTIVE MENU & SUMMARY
    # -----------------------------------------------------------
    - name: text_header_executive
      type: text
      row: 0
      col: 0
      width: 24
      height: 3
      body_text: |-
        <nav style="font-size: 14px; padding: 12px; background-color: #f4f6f7; border-radius: 5px; text-align: center; font-weight: bold; margin-bottom: 15px;">
          <a href="#sales" style="color: #1a73e8; text-decoration: none; padding: 0 15px;">📉 Sales Trends</a> |
          <a href="#products" style="color: #1a73e8; text-decoration: none; padding: 0 15px;">📦 Products & Inventory</a> |
          <a href="#customers" style="color: #1a73e8; text-decoration: none; padding: 0 15px;">👥 Customer Insights</a> |
          <a href="#operations" style="color: #1a73e8; text-decoration: none; padding: 0 15px;">🚚 Fulfillment</a>
        </nav>
        <h2 style="margin: 0; color: #202124;">📈 Executive KPI Summary</h2>
        <p style="margin: 5px 0 0 0; color: #5f6368; font-size: 14px;">High-level business performance metrics for overall health.</p>

    - name: kpi_total_revenue
      title: Total Revenue
      model: external_data_model
      explore: order_items
      type: single_value
      fields: [order_items.total_sale_price]
      row: 3
      col: 0
      width: 4
      height: 4

    - name: kpi_total_gross_margin
      title: Total Gross Margin
      model: external_data_model
      explore: order_items
      type: single_value
      fields: [order_items.total_gross_margin]
      row: 3
      col: 4
      width: 4
      height: 4

    - name: kpi_total_orders
      title: Total Orders
      model: external_data_model
      explore: order_items
      type: single_value
      fields: [order_items.order_count]
      row: 3
      col: 8
      width: 4
      height: 4

    - name: kpi_total_users
      title: Total Users
      model: external_data_model
      explore: order_items
      type: single_value
      fields: [users.count]
      row: 3
      col: 12
      width: 4
      height: 4

    - name: kpi_return_rate
      title: Return Rate
      model: external_data_model
      explore: order_items
      type: single_value
      fields: [order_items.return_rate]
      row: 3
      col: 16
      width: 4
      height: 4

    - name: kpi_avg_sale_price
      title: Avg Order Value
      model: external_data_model
      explore: order_items
      type: single_value
      fields: [order_items.average_sale_price]
      row: 3
      col: 20
      width: 4
      height: 4

    # -----------------------------------------------------------
    # SECTION 2: SALES & REVENUE TRENDS
    # -----------------------------------------------------------
    - name: text_header_sales
      type: text
      row: 7
      col: 0
      width: 24
      height: 2
      body_text: |-
        <h2 id="sales" style="margin: 0; color: #202124; padding-top: 15px; border-top: 2px solid #e8eaed;">📉 Sales & Revenue Trends</h2>
        <p style="margin: 5px 0 0 0; color: #5f6368; font-size: 14px;">Historical revenue generation and order volume.</p>

    - name: viz_revenue_over_time
      title: Revenue Over Time
      model: external_data_model
      explore: order_items
      type: looker_line
      fields: [order_items.created_month, order_items.total_sale_price]
      fill_fields: [order_items.created_month]
      sorts: [order_items.created_month desc]
      limit: 12
      x_axis_gridlines: false
      y_axis_gridlines: true
      row: 9
      col: 0
      width: 12
      height: 8

    - name: viz_orders_by_week
      title: Order Volume by Week
      model: external_data_model
      explore: order_items
      type: looker_column
      fields: [order_items.created_week, order_items.order_count]
      fill_fields: [order_items.created_week]
      sorts: [order_items.created_week desc]
      limit: 12
      x_axis_gridlines: false
      y_axis_gridlines: true
      row: 9
      col: 12
      width: 12
      height: 8

    - name: viz_margin_vs_revenue
      title: Revenue vs Margin by Month
      model: external_data_model
      explore: order_items
      type: looker_area
      fields: [order_items.created_month, order_items.total_sale_price, order_items.total_gross_margin]
      fill_fields: [order_items.created_month]
      sorts: [order_items.created_month desc]
      limit: 12
      row: 17
      col: 0
      width: 12
      height: 8

    - name: viz_yoy_revenue
      title: Month-over-Month Revenue comparison
      model: external_data_model
      explore: order_items
      type: looker_line
      fields: [order_items.created_month_name, order_items.created_year, order_items.total_sale_price]
      pivots: [order_items.created_year]
      sorts: [order_items.created_year desc, order_items.created_month_name]
      limit: 500
      row: 17
      col: 12
      width: 12
      height: 8

    # -----------------------------------------------------------
    # SECTION 3: PRODUCT & INVENTORY
    # -----------------------------------------------------------
    - name: text_header_products
      type: text
      row: 25
      col: 0
      width: 24
      height: 2
      body_text: |-
        <h2 id="products" style="margin: 0; color: #202124; padding-top: 15px; border-top: 2px solid #e8eaed;">📦 Products & Inventory Performance</h2>
        <p style="margin: 5px 0 0 0; color: #5f6368; font-size: 14px;">Understand category performance and inventory health.</p>

    - name: viz_top_categories
      title: Top Categories by Revenue
      model: external_data_model
      explore: order_items
      type: looker_bar
      fields: [products.category, order_items.total_sale_price]
      sorts: [order_items.total_sale_price desc]
      limit: 10
      color_application:
        collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
        palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      row: 27
      col: 0
      width: 8
      height: 8

    - name: viz_brand_performance
      title: Top Brand Performance
      model: external_data_model
      explore: order_items
      type: table
      fields: [products.brand, order_items.order_count, order_items.total_sale_price, order_items.total_gross_margin]
      sorts: [order_items.total_sale_price desc]
      limit: 15
      row: 27
      col: 8
      width: 8
      height: 8

    - name: viz_inventory_sold_status
      title: Inventory Status (Sold vs Unsold)
      model: external_data_model
      explore: order_items
      type: looker_pie
      fields: [inventory_items.is_sold, inventory_items.count]
      sorts: [inventory_items.count desc]
      limit: 500
      value_labels: legend
      row: 27
      col: 16
      width: 8
      height: 8

    - name: viz_return_rate_dept
      title: Return Rate by Department
      model: external_data_model
      explore: order_items
      type: looker_column
      fields: [products.department, order_items.return_rate]
      sorts: [order_items.return_rate desc]
      limit: 10
      row: 35
      col: 0
      width: 12
      height: 8

    - name: viz_inventory_on_hand
      title: Current Inventory On-Hand by Category
      model: external_data_model
      explore: order_items
      type: looker_bar
      fields: [products.category, inventory_items.number_on_hand]
      sorts: [inventory_items.number_on_hand desc]
      limit: 15
      row: 35
      col: 12
      width: 12
      height: 8

    # -----------------------------------------------------------
    # SECTION 4: CUSTOMER DEMOGRAPHICS
    # -----------------------------------------------------------
    - name: text_header_customers
      type: text
      row: 43
      col: 0
      width: 24
      height: 2
      body_text: |-
        <h2 id="customers" style="margin: 0; color: #202124; padding-top: 15px; border-top: 2px solid #e8eaed;">👥 Customer Insights</h2>
        <p style="margin: 5px 0 0 0; color: #5f6368; font-size: 14px;">Demographics, geographical spread, and spend per user.</p>

    - name: viz_users_by_country
      title: Users by Country
      model: external_data_model
      explore: order_items
      type: looker_map
      fields: [users.country, users.count]
      sorts: [users.count desc]
      limit: 500
      map_plot_mode: points
      heatmap_gridlines: false
      heatmap_gridlines_empty: false
      heatmap_opacity: 0.5
      show_region_field: true
      row: 45
      col: 0
      width: 12
      height: 8

    - name: viz_traffic_source
      title: Users by Traffic Source
      model: external_data_model
      explore: order_items
      type: looker_donut_multiples
      fields: [users.traffic_source, users.count]
      sorts: [users.count desc]
      limit: 10
      row: 45
      col: 12
      width: 6
      height: 8

    - name: viz_gender_split
      title: Gender Breakdown
      model: external_data_model
      explore: order_items
      type: looker_pie
      fields: [users.gender_short, users.count]
      sorts: [users.count desc]
      limit: 10
      row: 45
      col: 18
      width: 6
      height: 8

    - name: viz_age_demographics
      title: Age Demographics
      model: external_data_model
      explore: order_items
      type: looker_column
      fields: [users.age_tier, users.count]
      fill_fields: [users.age_tier]
      sorts: [users.age_tier]
      limit: 50
      row: 53
      col: 0
      width: 12
      height: 8

    - name: viz_spend_per_user_country
      title: Avg Spend Per User by Country
      model: external_data_model
      explore: order_items
      type: table
      fields: [users.country, users.count, order_items.average_spend_per_user]
      sorts: [order_items.average_spend_per_user desc]
      limit: 15
      row: 53
      col: 12
      width: 12
      height: 8

    # -----------------------------------------------------------
    # SECTION 5: FULFILLMENT & OPERATIONS
    # -----------------------------------------------------------
    - name: text_header_operations
      type: text
      row: 61
      col: 0
      width: 24
      height: 2
      body_text: |-
        <h2 id="operations" style="margin: 0; color: #202124; padding-top: 15px; border-top: 2px solid #e8eaed;">🚚 Operations & Fulfillment</h2>
        <p style="margin: 5px 0 0 0; color: #5f6368; font-size: 14px;">Order lifecycle, shipping times, and distribution center loads.</p>

    - name: viz_order_status
      title: Order Status Breakdown
      model: external_data_model
      explore: order_items
      type: looker_bar
      fields: [order_items.status, order_items.count]
      sorts: [order_items.count desc]
      limit: 10
      row: 63
      col: 0
      width: 8
      height: 8

    - name: viz_shipping_time
      title: Avg Shipping Time by Month (Days)
      model: external_data_model
      explore: order_items
      type: looker_line
      fields: [order_items.created_month, order_items.average_shipping_time]
      fill_fields: [order_items.created_month]
      sorts: [order_items.created_month desc]
      limit: 12
      row: 63
      col: 8
      width: 8
      height: 8

    - name: viz_distribution_load
      title: Orders by Distribution Center
      model: external_data_model
      explore: order_items
      type: looker_pie
      fields: [distribution_centers.name, order_items.count]
      sorts: [order_items.count desc]
      limit: 10
      row: 63
      col: 16
      width: 8
      height: 8
