CREATE TABLE Usuario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);


INSERT INTO Usuario (nome, email, senha) VALUES ('Alice', 'alice@gmail.com', 'password1');
INSERT INTO Usuario (nome, email, senha) VALUES ('Bob', 'bob@gmail.com', 'password2');
INSERT INTO Usuario (nome, email, senha) VALUES ('Charlie', 'charlie@gmail.com', 'password3');
INSERT INTO Usuario (nome, email, senha) VALUES ('David', 'david@gmail.com', 'password4');
INSERT INTO Usuario (nome, email, senha) VALUES ('Eve', 'eve@gmail.com', 'password5');
INSERT INTO Usuario (nome, email, senha) VALUES ('Frank', 'frank@gmail.com', 'password6');
INSERT INTO Usuario (nome, email, senha) VALUES ('Grace', 'grace@gmail.com', 'password7');
INSERT INTO Usuario (nome, email, senha) VALUES ('Hank', 'hank@gmail.com', 'password8');
INSERT INTO Usuario (nome, email, senha) VALUES ('Ivy', 'ivy@gmail.com', 'password9');
INSERT INTO Usuario (nome, email, senha) VALUES ('Jack', 'jack@gmail.com', 'password10');
INSERT INTO Usuario (nome, email, senha) VALUES ('Kathy', 'kathy@gmail.com', 'password11');
INSERT INTO Usuario (nome, email, senha) VALUES ('Liam', 'liam@gmail.com', 'password12');
INSERT INTO Usuario (nome, email, senha) VALUES ('Mia', 'mia@gmail.com', 'password13');
INSERT INTO Usuario (nome, email, senha) VALUES ('Noah', 'noah@gmail.com', 'password14');
INSERT INTO Usuario (nome, email, senha) VALUES ('Olivia', 'olivia@gmail.com', 'password15');
INSERT INTO Usuario (nome, email, senha) VALUES ('Paul', 'paul@gmail.com', 'password16');
INSERT INTO Usuario (nome, email, senha) VALUES ('Quinn', 'quinn@gmail.com', 'password17');
INSERT INTO Usuario (nome, email, senha) VALUES ('Ruby', 'ruby@gmail.com', 'password18');
INSERT INTO Usuario (nome, email, senha) VALUES ('Sam', 'sam@gmail.com', 'password19');
INSERT INTO Usuario (nome, email, senha) VALUES ('Tina', 'tina@gmail.com', 'password20');
INSERT INTO Usuario (nome, email, senha) VALUES ('Lucca', 'lucca@gmail.com','password21');

SELECT * FROM usuario;