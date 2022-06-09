drop database if exists VinhosStore;
create database VinhosStore;

create table VinhosStore.Regiao(
	codRegiao bigint,
    nomeRegiao varchar(100),
    descricaoRegiao text,
    primary key(codRegiao)
);

create table VinhosStore.Vinicola(
	codVinicola bigint,
    nomeVinicola varchar(100),
    descricaoVinicola text,
    foneVinicola varchar(15),
    emailVinicola varchar(15),
    codRegiao bigint,
    primary key(codVinicola),
    foreign key(codRegiao) references VinhosStore.Regiao(codRegiao)
);

create table VinhosStore.Vinhos(
	codVinho bigint,
    nomeVinho varchar(50),
    tipoVinho varchar(30),
    anoVinho int,
    descricaoVinho text,
    codVinicola bigint,
    primary key(codVinho),
    foreign key(codVinicola) references VinhosStore.Vinicola(codVinicola)
);
