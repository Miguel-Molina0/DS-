CREATE DATABASE estoque;

USE estoque;
CREATE TABLE veiculo (
    marca VARCHAR(45) NOT NULL,
    modelo VARCHAR(45) NOT NULL,
    fabricante VARCHAR(45),
    cor VARCHAR(45),
    ano date,
    categoria VARCHAR(45),
    valor_compra decimal(10,2),
    valor_venda decimal(10,2),
    placa VARCHAR(45) UNIQUE primary key not null,
    chassis VARCHAR(45) UNIQUE,
    data_cadastro datetime
);


CREATE TABLE saidas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(45) UNIQUE,
    tipo_saida decimal(10,2),
    data_saida datetime,
    observacao TEXT

);



CREATE TABLE seguros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fk_placa varchar(45) unique,
    valor_seguro DECIMAL(10,2) NOT NULL,
    data_atualizacao datetime,
    FOREIGN KEY (fk_placa) REFERENCES veiculo(placa) ON DELETE CASCADE
);

