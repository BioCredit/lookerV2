# The name of this view in Looker is "Explore Prompts"
view: explore_prompts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `llm.explore_prompts` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: model_explore {
    type: string
    sql: ${TABLE}.model_explore ;;
  }

  dimension: prompt {
    type: string
    sql: ${TABLE}.prompt ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
  }
}
