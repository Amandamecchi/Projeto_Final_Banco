--ENTIDADES--
TABLE
integrantes;
entrevistas;
autores;
noticias;
dicas;
carreiras;
usuarios;
simulados;
questoes.


-- ATRIBUTOS--

integrantes
    id_integrante SERIAL PRIMARY KEY
    nome_integrante VARCHAR(100) NOT NULL
    foto_integrante /*?TEXT? VARCHAR?*/
    funcao_scrum VARCHAR(50)
    email_integrante VARCHAR(100) NOT NULL UNIQUE

entrevistas
    id_entrevista SERIAL PRIMARY KEY
    nome_entrevistado VARCHAR(200)
    datap_entrevista DATE NOT NULL
    cargo_entrevistado VARCHAR(100)
    url_video TEXT

autores
    id_autor  SERIAL PRIMARY KEY
    nome_autor VARCHAR(100) NOT NULL

noticias
    id_noticia SERIAL PRIMARY KEY
    id_autor FOREIGN KEY /*NOT NULL???*/
    titulo_noticia VARCHAR(200) NOT NULL
    subtitulo_noticia VARCHAR(200)
    texto_noticia TEXT NOT NULL
    area VARCHAR (30)
    datap_noticia DATE NOT NULL
    url_imagem TEXT

dicas
    id SERIAL PRIMARY KEY
    area VARCHAR (30)
    titulo_principal VARCHAR(200) NOT NULL
    imagem_principal TEXT
    titulo VARCHAR(200)
    url_img TEXT
    descricao TEXT

carreiras
    id_carreiras SERIAL PRIMARY KEY
    area VARCHAR(50) NOT NULL
    titulo_principal VARCHAR(200) NOT NULL
    imagem_principal TEXT
    descricao TEXT
    pre_requisitos TEXT
    areas_atuacao TEXT
    formacao_academica TEXT
    mercado_trabalho TEXT

usuarios
    id_usuarios SERIAL PRIMARY KEY
    nome_usuario VARCHAR(100) NOT NULL
    email_usuario VARCHAR(100) NOT NULL UNIQUE
    senha VARCHAR(250) NOT NULL
    data_cadastro DATE /*NOT NULL??*/

simulados
    id SERIAL PRIMARY KEY
    disciplina VARCHAR(50) NOT NULL
    descricao TEXT

questoes
    id_questoes SERIAL PRIMARY  KEY
    id_simulado /*INT NOT NULL*/ FOREIGN KEY
    nivel_dificuldade VARCHAR(20)
    area VARCHAR(50)
    enunciado TEXT NOT NULL
    alternativa_a TEXT
    alternativa_b TEXT
    alternativa_c TEXT
    alternativa_d TEXT
    alternativa_correta /*INT ??*/
    resultados TEXT
