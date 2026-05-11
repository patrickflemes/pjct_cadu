connection: "conn_bigquery_dev"

include: "/views/**/*.view.lkml"

explore: fact_tickets {
  label: "Tickets"
  description: "Atendimentos do Cadu com perfil e usuários responsáveis."

  join: dim_profile {
    type: left_outer
    sql_on: ${fact_tickets.profile_id} = ${dim_profile.profile_id} ;;
    relationship: many_to_one
  }

  join: dim_user_last_assigned {
    from: dim_user
    type: left_outer
    sql_on: ${fact_tickets.last_assigned_by_user_id} = ${dim_user_last_assigned.user_id} ;;
    relationship: many_to_one
  }

  join: dim_user_first_assigned {
    from: dim_user
    type: left_outer
    sql_on: ${fact_tickets.first_assigned_by_user_id} = ${dim_user_first_assigned.user_id} ;;
    relationship: many_to_one
  }

  join: ops_freshness {
    type: left_outer
    sql_on: ${ops_freshness.table_name} = 'fact_tickets' ;;
    relationship: many_to_one
  }
}

explore: fact_tickets_daily {
  label: "Tickets por dia"
  description: "Atendimentos pré-agregados por dia, versão e perfil."

  join: dim_profile {
    type: left_outer
    sql_on: ${fact_tickets_daily.profile_id} = ${dim_profile.profile_id} ;;
    relationship: many_to_one
  }
}

explore: fact_tickets_by_profile_daily {
  label: "Tickets por departamento por dia"
  description: "Atendimentos pré-agregados por dia, versão e nome do perfil."
}

explore: fact_tickets_by_user_daily {
  label: "Tickets por usuário por dia"
  description: "Atendimentos pré-agregados por dia, versão e usuário responsável."
}

explore: fact_cost_by_profile_daily {
  label: "Custo por departamento por dia"
  description: "Custo total e médio dos atendimentos finalizados, agrupados por departamento."
}

explore: fact_budget {
  label: "Orçamento vs Realizado"
  description: "Comparativo mensal entre orçamento (BRL convertido) e custo real da API Anthropic (USD)."
}
