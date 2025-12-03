Create database db_agenda;
use db_agenda;

create table tb_usuario (
id_user int primary key auto_increment,
nm_user varchar(45), 
nr_senha int
);

create table tb_evento(
id_evento int primary key auto_increment,
nm_local varchar(45),
nr_valor double,
nr_dt datetime,
nm_tipo_evento varchar(45));

create table tb_contato(
id_contato int auto_increment primary key,
nm_contato varchar(45),
nr_tele char(11),
dt_nascimento datetime,
nm_email varchar(45),
nm_endereco varchar(45)
); 

