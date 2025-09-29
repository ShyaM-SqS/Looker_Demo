connection: "practice_project"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# access_grant: prak {
#   user_attribute: test_at
#   allowed_values: ["ind","us"]
# }
explore: orders {
  # access_filter: {
  #   field: orders.state
  #   user_attribute: test_at
  # }
}
datagroup: inc_pdt  {
  sql_trigger:  SELECT MAX(order_id) FROM `elastic-pocs.Super_Store_Sales.Orders` ;;
  max_cache_age: "24 hour"
}
explore: derived {}
