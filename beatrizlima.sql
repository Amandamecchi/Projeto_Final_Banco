CREATE TABLE cadastro(
    id SERIAL PRIMARY KEY,
    nome_completo VARCHAR(100),
    email VARCHAR(200),
    senha VARCHAR(15)
);

CREATE TABLE noticias (
    id SERIAL PRIMARY KEY,
    autor VARCHAR(100),
    titulo VARCHAR(100),
    subtitulo VARCHAR(200),
    texto TEXT
);