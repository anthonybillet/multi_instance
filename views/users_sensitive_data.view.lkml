view: users_sensitive_data {
  sql_table_name: `ant-billet-looker-core-argolis.thelook_ecomm.users_sensitive_info_dummy` ;;

  dimension: id {
    hidden: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: household_income {
    value_format_name: usd_0
    type: number
    sql: ${TABLE}.household_income ;;
  }

  dimension: household_income_tiers {
    value_format_name: usd_0
    type: tier
    style: integer
    tiers: [25000,50000,75000,100000,125000,150000,200000,300000,400000,500000,1000000]
    sql: ${household_income} ;;
  }

}
