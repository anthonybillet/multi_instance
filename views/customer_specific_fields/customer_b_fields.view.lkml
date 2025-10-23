include: "/views/**.view.lkml"

access_grant: customer_b_custom_fields {
  user_attribute: customer_id_client_specific_fields
  allowed_values: ["Volcom", "Admin"]
}

view: +order_items {

  dimension: customer_b_custom_1 {
    required_access_grants: [customer_b_custom_fields]
    type: string
    sql: CONCAT('Customer B','_', ${id}) ;;
  }

  dimension: customer_b_custom_2 {
    required_access_grants: [customer_b_custom_fields]
    type: string
    sql: CONCAT('Customer B','_', ${status}) ;;
  }
}

view: +users {

  dimension: customer_b_custom_1 {
    required_access_grants: [customer_b_custom_fields]
    type: string
    sql: CONCAT('Customer B','_', ${first_name}) ;;
  }

  dimension: customer_b_custom_2 {
    required_access_grants: [customer_b_custom_fields]
    type: string
    sql: CONCAT('Customer B','_', ${last_name});;
  }

}
