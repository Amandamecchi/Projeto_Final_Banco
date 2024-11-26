CREATE TABLE dicas (
    id_dica INT /*PK?*/
    titulo VARCHAR(250),
    disciplina VARCHAR(50),
    conteudo: TEXT
)

CREATE TABLE carreiras(
  id_carreira INT (PK),
  nome_carreira VARCHAR(255),
  disciplina VARCHAR(50),
  /*imagem VARCHAR(255)*/,
  requisitos TEXT,
  descricao TEXT,
  areas_atuacao TEXT
)

/*INSERTS - DICAS*/

INSERT INTO dicas (id_dica, nome_carreira, disciplina, /*img*/, requisitos, descricao, areas_atuacao) VALUES
/*seria mais fácil criar ma tabela para cada materia, tá confundindo a minha cabeça*/
(1, 'Teoria da Arte', 'Artes', /**/),
(2, 'Historia da Arte', 'Artes', /**/),
(3, 'Elementos da Arte', 'Artes', /**/),
(4, 'A Importância do Aquecimento', 'Educação Física', /**/),
(5, 'Fisiologia do Exercício', 'Educação Física', /**/),
(6, 'Benefícios da Atividade Física', 'Educação Física', /**/),

/*INSERTS - CARREIRAS*/

INSERT INTO carreiras (id_carreira, nome_carreira, disciplina, /*imagem*/, requisitos, descricao, areas_atuacao) VALUES
(1, 'Ator', 'Artes', 'img?', 'Cursos Profissionalizantes,' 'A carreira de ator envolve a interpretação de personagens em diversos tipos de mídia, como cinema, teatro, televisão e até plataformas digitais.', 'Cinema, Teatro, Televisão, Dublagem de voz, Comerciais e Publicidade, Performances em Eventos'),
(2, 'Músico', 'Artes', 'img', 'Edcação Musical, Teoria Musical, Habilidade Musical, Dedicação', 'Um músico é um artista multifacetado que se dedica à criação, interpretação e ensino de música.', 'Música ao Vivo, Ensino de Música, Composição e arranjo, Produção Musical, Orquestra e Bandas Sinfônicas'),
(3, 'Dançarino', 'Artes', 'img',  'Experiência, Criatividade, certificações pedagógicas', 'O dançarino é o profissional que trabalha com dança. Ele é capaz de se expressar através do seu corpo, com movimentos artísticos que dão vida à música.', 'Ensino, Direção, Produção de Eventos, Expressão Corporal',)
(4, 'Artista Visual', 'Artes', 'img',  'Graduação ou Cursos Técnicos, Habilidades Artísticas, Desenvolvimento de Portfólio, Estilo Pessoal', 'O profissional de Artes Visuais é responsável pelo desenvolvimento e divulgação de obras de arte, elaboração de projetos de design e comunicação visual, além da aplicação de estratégias para a conservação de bens culturais.', 'Ensino e Educação, Produções Artísticas, Design e Comunicação Visual,  Produção Cultural, Restauro e Conservação, Mídias Digitais e Multimídia, Mercado de Arte, Crítica, Avaliação e Análise de Arte, Cenografia e Figurino'),

(5, 'Ensino', 'Educação Física', 'img', 'Interesse por Esportes e Saúde, Habilidades de Comunicação, Capacidade de liderança e motivação, Formação acadêmica, Empatia e Sensibilidade', 'O profissional de educação física atua em diversas frentes, contribuindo para a formação de indivíduos saudáveis e ativos.', 'Escolas, Academias, Clubes Esportivos, Saúde Pública, Reabilitação Física, Pesquisa e Ensino Superior' )
(5, 'Ensino', 'Educação Física', 'img', '',)
(5, 'Ensino', 'Educação Física', 'img', '',)
(5, 'Ensino', 'Educação Física', 'img', '',)