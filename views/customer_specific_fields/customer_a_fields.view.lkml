include: "/views/**.view.lkml"


#column level security: establish a reuseable lock that can only be opened with certain user attribute values:
access_grant: customer_a_custom_fields {
  user_attribute: customer_id_client_specific_fields
  allowed_values: ["Carhartt", "Admin"]
}

view: +order_items {

  dimension: customer_a_custom_1 {
    #column level security: apply the reuseable lock to this field so only users with specific user_attributes can see this field:
    required_access_grants: [customer_a_custom_fields]
    type: string
    sql: CONCAT('Customer A','_', ${id})  ;;
  }

  dimension: customer_a_custom_2 {
    required_access_grants: [customer_a_custom_fields]
    type: string
    sql: CONCAT('Customer A','_', ${status})  ;;
  }

}

view: +users {

  dimension: customer_a_custom_1 {
    required_access_grants: [customer_a_custom_fields]
    type: string
    sql: CONCAT('Customer A','_', ${first_name});;
  }

  dimension: customer_a_custom_2 {
    required_access_grants: [customer_a_custom_fields]
    type: string
    sql: CONCAT('Customer A','_', ${last_name}) ;;
  }

}
