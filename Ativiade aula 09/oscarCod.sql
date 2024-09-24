use Oscar;

create table Melhor_filme(
	id_filme int primary key auto_increment not null,
    nome varchar(50) not null,
    genero varchar(50) not null
);

create table Melhor_diretor(
	id_diretor int primary key auto_increment not null,
    nome varchar(50) not null,
    data_Nasc varchar(20) not null,
    Nacionalidade varchar(30) not null,
    id_filme int,
    foreign key (id_filme) references Melhor_filme(id_filme)
);

create table Melhor_ator_atriz(
	id_ator int primary key auto_increment not null,
    nome varchar(30) not null,
    data_nasc varchar(20) not null,
    genero varchar(20) not null
);

create table premio(
	id_premio int primary key auto_increment not null,
    categoria varchar(30) not null
);

create table premiacao(
	id_premicao int primary key auto_increment not null,
    concorrente varchar(30) not null,
    vencedor boolean
);