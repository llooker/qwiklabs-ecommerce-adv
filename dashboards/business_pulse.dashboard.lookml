- dashboard: business_pulse
  title: Business Pulse
  layout: newspaper
  embed_style:
    background_color: "#2f6194"
    show_title: true
    title_color: "#5aa8bf"
    show_filters_bar: true
    tile_text_color: "#5c2d2d"
    text_tile_text_color: ''
  elements:
  - title: Average Order Sale Price
    name: Average Order Sale Price
    model: training_ecommerce_adv
    explore: order_items
    type: single_value
    fields: [order_items.average_sale_price]
    filters:
      order_items.status: Complete
    sorts: [order_items.average_sale_price desc]
    limit: 500
    query_timezone: America/Los_Angeles
    color_palette: Default
    font_size: medium
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#20A5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52", purple]
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    text_color: black
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: The average sales price has been calculated in XYZ manner
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      Brand: products.brand
    row: 0
    col: 7
    width: 5
    height: 4
  - title: Average Spend Per User
    name: Average Spend Per User
    model: training_ecommerce_adv
    explore: order_items
    type: single_value
    fields: [order_items.average_spend_per_user]
    sorts: [order_items.average_sale_price desc]
    limit: 500
    query_timezone: America/Los_Angeles
    font_size: medium
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#20A5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52", purple]
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    text_color: black
    hidden_fields: []
    y_axes: []
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      Brand: products.brand
    row: 0
    col: 12
    width: 5
    height: 4
  - title: Marketing Channel by User Demographic
    name: Marketing Channel by User Demographic
    model: training_ecommerce_adv
    explore: order_items
    type: looker_donut_multiples
    fields: [products.department, users.traffic_source, users.count]
    pivots: [users.traffic_source]
    sorts: [order_items.created_year desc, order_items.created_month_num
        desc 0, products.department, users.traffic_source]
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    show_value_labels: true
    font_size: 12
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#20A5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52", purple]
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    series_colors: {}
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    show_view_names: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    y_axes: []
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      Brand: products.brand
    row: 20
    col: 12
    width: 11
    height: 7
  - title: Orders by Day and Category
    name: Orders by Day and Category
    model: training_ecommerce_adv
    explore: order_items
    type: looker_area
    fields: [order_items.created_date, products.category, order_items.order_item_count]
    pivots: [products.category]
    filters:
      products.category: Jeans,Accessories,Active,Dresses,Sleep & Lounge,Shorts
    sorts: [order_items.created_year desc, order_items.created_month_num
        desc 0, products.department, users.traffic_source, products.category, order_items.created_date
        desc]
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    trellis: ''
    stacking: normal
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_fields: []
    y_axes: []
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      Brand: products.brand
    row: 4
    col: 1
    width: 22
    height: 8
  - title: Brand Sales
    name: Brand Sales
    model: training_ecommerce_adv
    explore: order_items
    type: table
    fields: [products.brand, order_items.order_count, order_items.average_spend_per_user,
      users.count, products.count]
    sorts: [order_items.order_count desc]
    limit: 20
    column_limit: 50
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: '0874a5f5-59e9-47f9-9072-f46572f7b2c1',
          custom: {id: 72db5785-15bf-e2ed-f56e-45244e57f95d, label: Custom, type: continuous,
            stops: [{color: "#fff", offset: 0}, {color: "#4FBC89", offset: 100}]},
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: [order_items.order_count]}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting_ignored_fields: []
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Brands are just private label brands
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
    row: 20
    col: 1
    width: 11
    height: 8
  - title: New Users Acquired
    name: New Users Acquired
    model: training_ecommerce_adv
    explore: order_items
    type: single_value
    fields: [users.count]
    filters:
      users.created_date: 90 days
    sorts: [order_items.order_count desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: goal, label: Goal, expression: '10000', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: dimension, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    color_palette: Default
    font_size: medium
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#20A5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52", purple]
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    text_color: "#49719a"
    hidden_fields: []
    y_axes: []
    note_state: expanded
    note_display: hover
    note_text: Total amount
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      Brand: products.brand
    row: 0
    col: 1
    width: 6
    height: 4
  - title: Most Frequent Shoppers
    name: Most Frequent Shoppers
    model: training_ecommerce_adv
    explore: order_items
    type: looker_map
    fields: [order_items.order_count, users.gender, users.map_location]
    pivots: [users.gender]
    filters:
      users.country: USA
    sorts: [order_items.order_count desc 0, users.gender]
    limit: 1000
    column_limit: 50
    query_timezone: America/New_York
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: outdoors
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 38.6579010751158
    map_longitude: -96.96670532226564
    map_zoom: 4
    map_marker_radius_max: 25
    map_marker_color: [blue, purple]
    map_value_colors: [white, purple]
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#20A5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52", purple]
    color_palette: Default
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_points: true
    point_style: none
    interpolation: linear
    map: usa
    map_projection: ''
    quantize_colors: false
    loading: false
    series_types: {}
    hidden_fields:
    y_axes: []
    defaults_version: 1
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      Brand: products.brand
    row: 12
    col: 12
    width: 11
    height: 8
  - title: "# Orders, Year Over Year"
    name: "# Orders, Year Over Year"
    model: training_ecommerce_adv
    explore: order_items
    type: looker_line
    fields: [order_items.created_year, order_items.order_count, order_items.created_month_name]
    pivots: [order_items.created_year]
    fill_fields: [order_items.created_month_name]
    sorts: [order_items.created_year 0, order_items.created_month_name]
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 141984a4-e5e2-4602-c511-5e69169cea6c
        label: Custom
        type: discrete
        colors:
        - "#75E2E2"
        - "#3EB0D5"
        - "#4276BE"
        - "#592EC2"
        - "#9174F0"
        - "#B1399E"
      options:
        steps: 5
    series_colors: {}
    series_types: {}
    y_axes: [{label: '', orientation: left, series: [{id: 2014 - order_items.total_revenue,
            name: '2014', axisId: 2014 - order_items.total_revenue}, {id: 2015 - order_items.total_revenue,
            name: '2015', axisId: 2015 - order_items.total_revenue}, {id: 2016 - order_items.total_revenue,
            name: '2016', axisId: 2016 - order_items.total_revenue}, {id: 2017 - order_items.total_revenue,
            name: '2017', axisId: 2017 - order_items.total_revenue}, {id: 2018 - order_items.total_revenue,
            name: '2018', axisId: 2018 - order_items.total_revenue}, {id: 2019 - order_items.total_revenue,
            name: '2019', axisId: 2019 - order_items.total_revenue}], showLabels: false,
        showValues: true, valueFormat: '$0, "K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Order Month
    ordering: none
    show_null_labels: false
    hidden_fields: []
    defaults_version: 1
    listen:
      State: users.state
      City: users.city
      Brand: products.brand
    row: 12
    col: 1
    width: 11
    height: 8
  - title: Orders This Year
    name: Orders This Year
    model: training_ecommerce_adv
    explore: order_items
    type: single_value
    fields: [order_items.order_count, order_items.reporting_period]
    filters:
      order_items.reporting_period: "-NULL"
    sorts: [order_items.order_count desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: from_this_time_last_year, label: from this
          time last year, expression: "${order_items.order_count}/offset(${order_items.order_count},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: "#8c6f35"
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    font_size: medium
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#20A5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52", purple]
    text_color: "#49719a"
    hidden_fields: []
    y_axes: []
    listen:
      State: users.state
      City: users.city
      Brand: products.brand
    row: 0
    col: 17
    width: 6
    height: 4
  - title: Percent of Cohort Still Active by Traffic Source
    name: Percent of Cohort Still Active by Traffic Source
    model: training_ecommerce_adv
    explore: order_items
    type: looker_line
    fields: [users.traffic_source, order_items.months_since_signup, users.count]
    pivots: [users.traffic_source]
    filters:
      order_items.months_since_signup: "[0, 12]"
      users.created_month: 12 months
    sorts: [users.traffic_source, users.count desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: pct_cohort_still_active, label: Pct Cohort
          Still Active, expression: "${users.count} / max(${users.count})", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    trellis: ''
    stacking: ''
    colors: ['palette: Looker Classic']
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [users.count]
    y_axes: []
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      Brand: products.brand
    row: 27
    col: 12
    width: 11
    height: 8
  - title: User Behavior by Traffic Source
    name: User Behavior by Traffic Source
    model: training_ecommerce_adv
    explore: order_items
    type: looker_column
    fields: [order_items.average_sale_price, users.traffic_source]
    sorts: [users.traffic_source]
    limit: 500
    column_limit: 50
    trellis: ''
    stacking: ''
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    limit_displayed_rows: false
    y_axes: [{label: '', orientation: left, series: [{id: order_items.average_sale_price,
            name: Average Sale Price, axisId: order_items.average_sale_price}], showLabels: true,
        showValues: true, valueFormat: '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{id: user_order_facts.average_lifetime_orders, name: Average Lifetime
              Orders, axisId: user_order_facts.average_lifetime_orders}], showLabels: true,
        showValues: true, valueFormat: "#", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      Brand: products.brand
    row: 28
    col: 1
    width: 11
    height: 7
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 90 days
    allow_multiple_values: true
    required: false
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: training_ecommerce_adv
    explore: order_items
    listens_to_filters: []
    field: users.state
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: training_ecommerce_adv
    explore: order_items
    listens_to_filters: [State]
    field: users.city
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: training_ecommerce_adv
    explore: order_items
    listens_to_filters: []
    field: products.brand