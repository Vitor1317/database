CREATE TABLE atendente (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  biblioteca_id INTEGER UNSIGNED NOT NULL,
  nome VARCHAR(255) NULL,
  cpf VARCHAR(45) NULL,
  PRIMARY KEY(id),
  INDEX atendente_FKIndex1(biblioteca_id)
);

CREATE TABLE biblioteca (
  id INTEGER UNSIGNED NOT NULL,
  nome VARCHAR(45) NOT NULL,
  endereco VARCHAR(45) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE categoria (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NULL,
  PRIMARY KEY(id)
);

CREATE TABLE emprestimo (
  usuario_id INTEGER UNSIGNED NOT NULL,
  livro_id INTEGER UNSIGNED NOT NULL,
  atendente_id INTEGER UNSIGNED NOT NULL,
  data_2 DATE NULL,
  devolucao DATE NULL,
  PRIMARY KEY(usuario_id, livro_id),
  INDEX usuario_has_livro_FKIndex1(usuario_id),
  INDEX usuario_has_livro_FKIndex2(livro_id),
  INDEX emprestimo_FKIndex3(atendente_id)
);

CREATE TABLE livro (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  categoria_id INTEGER UNSIGNED NOT NULL,
  titulo VARCHAR(255) NULL,
  autor VARCHAR(255) NULL,
  editora VARCHAR(45) NULL,
  edicao CHAR(3) NULL,
  locallidade VARCHAR(45) NULL,
  ano YEAR NULL,
  PRIMARY KEY(id),
  INDEX livro_FKIndex1(categoria_id)
);

CREATE TABLE usuario (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NULL,
  cpf VARCHAR(255) NULL,
  email VARCHAR(255) NOT NULL,
  telefone VARCHAR(20) NULL,
  sexo VARCHAR(255) NULL,
  dataDeNascimento DATE NULL,
  PRIMARY KEY(id)
);


