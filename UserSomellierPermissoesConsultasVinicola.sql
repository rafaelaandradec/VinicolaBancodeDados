-- create de usuário e limitação de consultas
drop user if exists Somellier@"localhost";

create user Somellier@"localhost" with max_queries_per_hour 40;

-- permissão de consulta tabela Vinhos

grant select on VinhosStore.Vinhos to Somellier@"localhost";

-- permissão de consulta codVinicola, nomeVinicola na tabela Vinicola

grant select (codVinicola, nomeVinicola) on VinhosStore.Vinicola to Somellier@"localhost";