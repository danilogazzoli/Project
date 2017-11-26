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
