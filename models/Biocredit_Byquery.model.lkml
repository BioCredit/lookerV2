
connection: "streamdb_bioqa"

include: "/views/**/*.view.lkml"

datagroup: Biocredit_Byquery_default_datagroup
{

  max_cache_age: "1 hour"
}
persist_with: Biocredit_Byquery_default_datagroup

#-----------------------------Explorer--------------------------------------
explore: users
 {
    join: user_credit
    {
      type: left_outer
      sql_on: ${user_credit.user_id} = ${users.id};;
      relationship: many_to_one
    }
  }
explore:user_credit
{
    join: users {
      type: left_outer
      sql_on: ${user_credit.user_id} = ${users.id};;
      relationship: many_to_one
    }
    join: credit_status_description{
      type: left_outer
      sql_on: ${user_credit.credit_status_id} = ${credit_status_description.id};;
      relationship: many_to_one
    }
    join: users_allied_companies{
      type: left_outer
      sql_on:${users.document_id}  = ${users_allied_companies.document_id}
      AND ${users.id}=${user_credit.user_id};;
      relationship: one_to_one
    }
}
explore: users_allied_companies{}

explore: credit_status_description{}
#---------------------------------------------------------------------------
