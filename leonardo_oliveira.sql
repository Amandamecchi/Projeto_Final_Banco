CREATE TABLE simulados (
id SERIAL PRIMARY KEY,
disciplina VARCHAR(50),
descricao TEXT,
nivel_dificuldade VARCHAR(20),
materia VARCHAR(30),
quantidade_perguntas INT,
perguntas VARCHAR(70),
resultados INT
);
