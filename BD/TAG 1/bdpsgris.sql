CREATE DATABASE grisps;

USE grisps;

CREATE TABLE candidato(
    dre INT NOT NULL,
    nome VARCHAR(80) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telegram VARCHAR(15) NOT NULL,
    `nota questionario` FLOAT,
    PRIMARY KEY(dre)
);

CREATE TABLE `representante gris`(
    dre INT NOT NULL, 
    nome VARCHAR(80) NOT NULL,
    PRIMARY KEY(dre)
); 

CREATE TABLE materia(
    nome VARCHAR(80) NOT NULL,
    professor INT NOT NULL,
    PRIMARY KEY(nome),
    FOREIGN KEY(professor) REFERENCES `representante gris`(dre)
);

CREATE TABLE tag(
    id INT AUTO_INCREMENT NOT NULL,
    prazo DATE NOT NULL,
    nome VARCHAR(80) NOT NULL,
    materia VARCHAR(80) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(materia) REFERENCES materia(nome)
);

CREATE TABLE candidato_tag(
    id INT AUTO_INCREMENT NOT NULL,
    candidato INT NOT NULL,
    tag INT NOT NULL,
    `data de entrega` DATE,
    PRIMARY KEY(id),
    FOREIGN KEY(candidato) REFERENCES candidato(dre),
    FOREIGN KEY(tag) REFERENCES tag(id)
);


CREATE TABLE candidato_materia(
 	id INT AUTO_INCREMENT NOT NULL,
    candidato INT NOT NULL,
    materia VARCHAR(80) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(candidato) REFERENCES candidato(dre),
    FOREIGN KEY(materia) REFERENCES materia(nome)
);