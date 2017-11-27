CREATE table cidade (
  cdCidade int not null primary key,
  
                       nmcidade varchar(100) not null,
  
                       uf char(2) 
);




CREATE TABLE pessoa (
  cdpessoa int not null primary key,
  
                       nmpessoa varchar(100) not null,
  
                       delogradouro varchar(100),
  
                       debairro varchar(100),
  
                       cdCidade integer not null);




ALTER TABLE pessoa 
  ADD CONSTRAINT fk_pessoa_cidade FOREIGN KEY(cdcidade) 
  REFERENCES cidade(cdcidade);



insert into cidade (cdCidade, nmcidade, uf) values (1, 'Maringá', 'PR');

insert into cidade (cdCidade, nmcidade, uf) values (2, 'Curitiba', 'PR');

insert into cidade (cdCidade, nmcidade, uf) values (3, 'Londrina', 'PR');

insert into cidade (cdCidade, nmcidade, uf) values (4, 'Ponta Grossa', 'PR');

insert into cidade (cdCidade, nmcidade, uf) values (5, 'Apucarana', 'PR');

insert into cidade (cdCidade, nmcidade, uf) values (6, 'Cambé', 'PR');

insert into cidade (cdCidade, nmcidade, uf) values (7, 'Foz do Iguaçu', 'PR');


insert into cidade (cdCidade, nmcidade, uf) values (8, 'Sarandi', 'PR');


CREATE SEQUENCE PESSOA_GENERATOR;