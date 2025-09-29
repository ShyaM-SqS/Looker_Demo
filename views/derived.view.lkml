# If necessary, uncomment the line below to include explore_source.

# include: "test2.model.lkml"

view: derived {
  derived_table: {
    datagroup_trigger: inc_pdt
    explore_source: orders {
      column: count { field: orders.count }
      column: state { field: orders.state }
      column: sales { field: orders.sales }
    }
  }
  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: state {
    sql: ${TABLE}.state ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }
}
