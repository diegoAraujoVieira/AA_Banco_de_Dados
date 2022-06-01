#atividade ativa banco de dados IESB
#Aluno: Diego Araujo vieira
#Matricula:2186101427
#Curso: Análise e desenvolvimento de sistemas

#comando para criar o banco de dados 
create database escola_lago_azul
default character set utf8
default collate utf8_general_ci;

#comando utilizado para criar uma tabela
create table alunos(
matricula int not null,
nome_aluno varchar(30) not null,
turma varchar(30),
disciplinas_matriculadas varchar(50),
#notas do 1º Bimestre
nota_1B_PT float, #notas do aluno em cada matéria.
nota_1B_MT float,
nota_1B_GEO float,
nota_1B_CIE float,
nota_1B_HIS float,
nota_1B_INF float,
nota_1B_EF float,
nota_1B_ART float,
nota_1B_ESP float,
nota_1B_ING float,
media_1B float, #média do aluno no bimestre.
#notas do 2º Bimestre
nota_2B_PT float,
nota_2B_MT float,
nota_2B_GEO float,
nota_2B_CIE float,
nota_2B_HIS float,
nota_2B_INF float,
nota_2B_EF float,
nota_2B_ART float,
nota_2B_ESP float,
nota_2B_ING float,
media_2B float,
#notas do 3º Bimestre
nota_3B_PT float,
nota_3B_MT float,
nota_3B_GEO float,
nota_3B_CIE float,
nota_3B_HIS float,
nota_3B_INF float,
nota_3B_EF float,
nota_3B_ART float,
nota_3B_ESP float,
nota_3B_ING float,
media_3B float,
#notas do 4º Bimestre
nota_4B_PT float,
nota_4B_MT float,
nota_4B_GEO float,
nota_4B_CIE float,
nota_4B_HIS float,
nota_4B_INF float,
nota_4B_EF float,
nota_4B_ART float,
nota_4B_ESP float,
nota_4B_ING float,
media_4B float,
media_final float, #media final do aluno
situação varchar(15),
primary key (matricula) #comando utilizado para adicionar a chave primaria.
)default charset = utf8;

alter table alunos add foreign key (disciplinas_matriculadas) references disciplinas(cod_disciplina); #comando para adicionar uma chave estrangeira.
alter table alunos add foreign key (turma) references turmas(cod_turma);

create table turmas(
cod_turma varchar(5),
serie int,
primary key (cod_turma)
)default charset = utf8;

alter table turmas add column lista_alunos varchar(30); 
alter table turmas add foreign key (lista_alunos) references alunos(nome_aluno);
 
alter table turmas add column matricula_aluno int;
alter table turmas add foreign key (matricula_aluno) references alunos(matricula);

create table disciplinas(
cod_disciplina int,
nome_disciplina varchar(20),
primary key (cod_disciplina)
)default charset = utf8;

create table professores(
nome_professor varchar(30) not null,
disciplinas_lecionadas int
)default charset = utf8;

alter table professores add foreign key (disciplinas_lecionadas) references disciplinas(cod_disciplina);





