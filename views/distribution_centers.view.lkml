view: distribution_centers {
  sql_table_name: `ant-billet-looker-core-argolis.thelook_ecomm.distribution_centers` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }
  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name, products.count]
  }
}

view: +distribution_centers {
  dimension: location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  dimension: latitude {
    label: "Latitude"
    sql: ${TABLE}.latitude ;;
    hidden: yes
  }

  dimension: longitude {
    label: "Longitude"
    sql: ${TABLE}.longitude ;;
    hidden: yes
  }

  dimension: id {
    label: "ID"
    type: number
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    label: "Name"
    sql: ${TABLE}.name ;;
  }
}
