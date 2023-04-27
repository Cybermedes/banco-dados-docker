--Database para o MySQL 8.0.33
CREATE DATABASE loja_mec;
USE loja_mec;

CREATE TABLE funcionarios (
        nome VARCHAR(20) NOT NULL,
        sobrenome VARCHAR(30) NOT NULL,
        cargo VARCHAR(20)
);

INSERT INTO funcionarios VALUES ("Jose","Silva","Mecanico"),
        ("Carlos","Costa","Eletricista"),
        ("Marcos","Moreira","Encanador"),
        ("Eduardo","Santos","Auxiliar");

CREATE TABLE produtos (
        produtos VARCHAR(30) NOT NULL,
        quantidade INT,
        valor_unit DECIMAL(4,2)
);

INSERT INTO produtos VALUES("Parafusos",800,0.65),
        ("Porcas",900,0.5),
        ("Pregos", 1250, 0.12),
        ("Rebites", 460, 0.28);

ALTER TABLE produtos ADD COLUMN valor_total DECIMAL(7,2);
UPDATE produtos SET valor_total=quantidade*valor_unit;

CREATE TABLE salarios AS SELECT cargo FROM funcionarios;
ALTER TABLE salarios ADD COLUMN salario INT;

UPDATE salarios SET salario=1800 WHERE cargo="Mecanico";
UPDATE salarios SET salario=2100 WHERE cargo="Eletricista";
UPDATE salarios SET salario=1650 WHERE cargo="Encanador";
UPDATE salarios SET salario=1320 WHERE cargo="Auxiliar";

