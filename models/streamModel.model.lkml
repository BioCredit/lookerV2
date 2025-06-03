# Define the database connection to be used for this model.
connection: "streamdb_bioqa"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: streamModel_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: streamModel_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "StreamModel"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: company_v2 {}

explore: company {}

explore: company_credit_line_v2 {}

explore: company_credit_line_terms_config_v2 {}

explore: bancolombia_log {}

explore: company_credit_line_other_cost_v2 {}

explore: bancolombia_user_bnpl {}

explore: company_credit_line_information_v2 {}

explore: credit_line {}

explore: credit_line_config {}

explore: credit_line_by_company {}

explore: credit_line_by_company_description {}

explore: credit_line_config_description {}

explore: credit_line_description {}

explore: credit_status_description {}

explore: credit_status {}

explore: user_credit {}

explore: users {}

explore: products_v2 {}

explore: qr_campaigns {}

explore: products {}

