CREATE DATABASE portaldenoticias;

CREATE TABLE autores (
    id_autor SERIAL PRIMARY KEY,
    nome_autor VARCHAR(100) NOT NULL,
);

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
    nome_integrante VARCHAR(100),
    foto_integrante VARCHAR(200),
    funcao_scrum VARCHAR(15),
    email_integrante VARCHAR(200)
);

INSERT INTO sobre_nos(nome_integrante, foto_integrante, funcao_scrum, email_integrante) VALUES
('Amanda Gomes Mechi', '/Portal_Noticias/images/Amanda.site.jpeg', 'Product Owner', 'amanda.mechi@aluno.senai.br' ),
('André Lucca Santos', '/Portal_Noticias/images/André.site.jpeg', 'Desenvolvedor', 'andre.r.santos45@aluno.senai.br'),
('Beatriz Lima', '/Portal_Noticias/images/Beatriz.site.jpeg', 'Desenvolvedora', 'beatriz.lima14@aluno.senai.br'),
('Enzo Alves Turcovic', '/Portal_Noticias/images/Enzo.site.jpeg', 'Scrum Master', 'enzo.turcovic@aluno.senai.br'),
('Leonardo Pedro de Oliveira', '/Portal_Noticias/images/Leonardo.site.jpeg', 'Desenvolvedor', 'leonardo.p.oliveira12@aluno.senai.br')