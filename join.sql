-- cria a tabela Cidades
create table Cidades(
id  int primary key, -- id como chave primaria
nome varchar(60) not null, --  nome como "not null", obrigando que essa coluna sejá prenchida
populacao int 
);

-- cria a tabela Alunos
create table Alunos (
id int primary key,
nome varchar(60) not null,
data_nasc date,
cidade_id int,

foreign key(cidade_id) references Cidades(id) -- estabelece um relacionamento entre a tabela "Cidades" e "Alunos"
);

-- inserimento dos dados na tabela "Cidades"
insert into Cidades values(1,'Arraial dos Tucanos', 42632);
insert into Cidades values(2,'Springfield', 13820);
insert into Cidades values(3,'Hill Valley', 27383);
insert into Cidades values(4,'Coruscant', 19138);
insert into Cidades values(5,'Minas Tirith', 31394);

-- inserimento dos dados na tabela "Alunos"
insert into Alunos values(1,'Immanuel Kant', '1724-04-22', 4);
insert into Alunos values(2,'Alan Turing', '1912-06-23', 3);
insert into Alunos values(3,'George Boole', '2002-01-01', 1);
insert into Alunos values(4,'Lynn Margulis', '1991-08-12', 3);
insert into Alunos values(5,'Nicola Tesla', '2090-01-08', null);
insert into Alunos values(6,'Ada Lovelace', '1978-05-28', 4);
insert into Alunos values(7,'Claude Shannon', '1982-10-15', 3);
insert into Alunos values(8,'Charles Darwin', '2010-02-06', null);
insert into Alunos values(9,'Marie Curie', '2007-07-12', 3);
insert into Alunos values(10,'Carl Sagan', '2000-11-20', 1);
insert into Alunos values(11,'Tim Berners-Lee', '1973-12-05', 4);
insert into Alunos values(12,'Richard Feynman', '1982-09-12', 1);

/* consulta a tabela e retorna todos os alunos que tem algum relacionamento com a cidade, neste caso o relacionamento é feito pela chave primaria da tabela "Cidades" e pela chave estrangeira da tabela "Alunos"*/
select * from Alunos inner join Cidades on Cidades.id = Alunos.cidade_id;
