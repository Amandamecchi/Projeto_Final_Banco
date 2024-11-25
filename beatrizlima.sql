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
    nome_entrevistado VARCHAR(100),
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
('Leonardo Pedro de Oliveira', '/Portal_Noticias/images/Leonardo.site.jpeg', 'Desenvolvedor', 'leonardo.p.oliveira12@aluno.senai.br');

INSERT INTO entrevistas(nome_entrevistado, titulo_entrevista, descricao_entrevista, datap_entrevista, cargo_entrevistado, url_video) VALUES
('Pierre Ferreira', 'Entrevista para escola sobre a profissão', 'Nesta entrevista, o treinador Pierre Ferreira compartilha os desafios e dá conselhos para futuros profissionais da área de Educação Física.', '2024-11-22', 'Treinador Físico Comportamental', 'https://www.youtube.com/embed/xmDCLzBKRis?si=JU1HUQzniVWUgqDp'),
('Alessandra', 'Entrevista - Educação Física - Alessandra', 'Nesta entrevista, a professora de Educação Física Alessandra compartilha sua trajetória acadêmica e profissional.', '2024-11-24', 'Professora de Educação Física', 'https://www.youtube.com/embed/iMePkKPq_vc?si=OFDwe2gnHrK3Clh7'),
('Isabela', 'Entrevista - Artes', 'Nesta entrevista, a professora Isabela explica como a disciplina e organização nos estudos podem ser aliadas na preparação para o ENEM e vestibulares.', '2024-11-24', 'Professora de Artes', 'https://www.youtube.com/embed/HC2Q4Y4y6U4?si=axW7DNIXNnW7ojFN'),
('Iara Lage', 'Entrevista - Artes', 'Nesta entrevista, a professora Iara Lage compartilha o que o inspirou a seguir essa carreira, os desafios enfrentados durante a formação e as experiências marcantes da graduação. ', '2024-11-24', 'Professora de Artes', 'https://www.youtube.com/embed/0oY_W0n0eWo?si=dgq9-ypKvNi4iQc-');

INSERT INTO autores(nome_autor) VALUES 
('Camila Boehm'),
('Ana Beatriz Dias'),
('Barbie Latza Nadeau'),
('Fernanda Pinotti'),
('Da CNN'),
('Do R7'),
('Bruna Barone'),
('Redação');