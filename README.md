# Projeto-Delphi
Utilizado base de dados firebird 2.5

# Comando pra criar base de dados e Generator
create table pessoa(
    cod_pessoa int primary key,
    nome_pessoa varchar(60) not null,
    cpf_cnpj_pessoa varchar(19) not null,
    dat_pessoa date not null,
    end_pessoa varchar(80),
    bairro_pessoa varchar (25),
    cid_pessoa varchar(25),
    est_pessoa varchar(25),
    cep_pessoa varchar(12),
    tel_pessoa varchar(17),
    email_pessoa varchar(60),
    obs_pessoa varchar(200),
    sit_pessoa int
)

create sequence GEN_PESSOA
