# If necessary, uncomment the line below to include explore_source.
# include: "access.model.lkml"

view: add_a_unique_name_1600364656 {
  derived_table: {
    explore_source: access {
      column: id { field: users.id }
      column: name { field: content.name }
      filters: {
        field: content.name
        value: "% Difference from Monthly Avg NBHD"
      }
      bind_filters: {
        from_field: user.id
        to_field: user.id
      }
    }
  }
  dimension: id {
    type: number
  }
  dimension: name {}
}
