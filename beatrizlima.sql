CREATE DATABASE portaldenoticias;

CREATE TABLE autores (
    id_autor SERIAL PRIMARY KEY,
    nome_autor VARCHAR(100) NOT NULL,
)

CREATE TABLE noticias (
    id_noticia SERIAL PRIMARY KEY,
    titulo_noticia VARCHAR(100),
    subtitulo_noticia TEXT,
    texto_noticia TEXT,
    categoria VARCHAR(20),
    datap_noticia DATE,
    url_imagem VARCHAR(200),
    CONSTRAINT fk_autor FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

CREATE TABLE entrevistas (
    id_entrevista SERIAL PRIMARY KEY,
    titulo_entrevista VARCHAR(100),
    descricao_entrevista VARCHAR(200),
    datap_entrevista DATE,
    cargo_entrevistado VARCHAR(100),
    url_video VARCHAR(200)
);

CREATE TABLE sobre_nos (
    id_integrante SERIAL PRIMARY KEY,
    nove_inetegrante VARCHAR(100),
    foto_integrante VARCHAR(200),
    funcao_scrum VARCHAR(15),
    email_integrante VARCHAR(200)
);