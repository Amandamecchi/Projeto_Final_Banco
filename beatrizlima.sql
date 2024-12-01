CREATE DATABASE portaldenoticias;

CREATE TABLE autores (
    id_autor SERIAL PRIMARY KEY,
    nome_autor VARCHAR(100) NOT NULL
);

INSERT INTO autores(nome_autor) VALUES 
('Demétrio Vecchioli'),
('Rudy Alves Costa'),
('Joaquim Ferrari'),
('Markuz Nahas'),
('Marcelo Felipe'),
('Vinicius Da Silva Freitas'),
('José Carlos Farah'),
('Cris Pitanga'), 
('Camila Boehm'),
('Ana Beatriz Dias'),
('Barbie Latza Nadeau'),
('Fernanda Pinotti'),
('Da CNN'),
('Do R7'),
('Bruna Barone'),
('Redacao');

CREATE TABLE noticias (
    id_noticia SERIAL PRIMARY KEY,
    id_autor INT NOT NULL, --FK
    titulo_noticia VARCHAR(100),
    subtitulo_noticia TEXT,
    texto_noticia TEXT,
    area VARCHAR(20),
    datap_noticia DATE,
    url_imagem TEXT,
    CONSTRAINT fk_autor FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);


CREATE TABLE entrevistas (
    id_entrevista SERIAL PRIMARY KEY,
    nome_entrevistado VARCHAR(100),
    titulo_entrevista VARCHAR(100),
--Exclui descrição
    datap_entrevista DATE,
    cargo_entrevistado VARCHAR(100),
    url_video VARCHAR(200),
    area VARCHAR(20)
);


--Alteração no nome da tabela (para ficar de acordo com o MER e DER)
CREATE TABLE integrantes (
    id_integrante SERIAL PRIMARY KEY,
    nome_integrante VARCHAR(100),
    foto_integrante VARCHAR(200),
    funcao_scrum VARCHAR(20),
    email_integrante VARCHAR(200)
);

INSERT INTO integrantes(nome_integrante, foto_integrante, email_integrante) VALUES
('Amanda Gomes Mechi', '/Portal_Noticias/images/Amanda.site.jpeg', 'amanda.mechi@aluno.senai.br' ),
('André Lucca Santos', '/Portal_Noticias/images/André.site.jpeg', 'andre.r.santos45@aluno.senai.br'),
('Beatriz Lima', '/Portal_Noticias/images/Beatriz.site.jpeg', 'beatriz.lima14@aluno.senai.br'),
('Enzo Alves Turcovic', '/Portal_Noticias/images/Enzo.site.jpeg', 'enzo.turcovic@aluno.senai.br'),
('Leonardo Pedro de Oliveira', '/Portal_Noticias/images/Leonardo.site.jpeg', 'leonardo.p.oliveira12@aluno.senai.br');

-- Removi a função_scrum do primeiro insert e adicionei ela como um update em nosso banco para que conseguissemos realizar 1 "UPDATE" do CRUD
UPDATE integrantes SET funcao_scrum = 'Product Owner' WHERE nome_integrante = 'Amanda Gomes Mechi';
UPDATE integrantes SET funcao_scrum = 'Scrum Master' WHERE nome_integrante = 'Enzo Alves Turcovic';
UPDATE integrantes SET funcao_scrum = 'Desenvolvedora' WHERE nome_integrante = 'Beatriz Lima';
UPDATE integrantes SET funcao_scrum = 'Desenvolvedor' WHERE nome_integrante = 'André Lucca Santos';
UPDATE integrantes SET funcao_scrum = 'Desenvolvedor' WHERE nome_integrante = 'Leonardo Pedro de Oliveira';

SELECT * FROM integrantes;



INSERT INTO entrevistas(nome_entrevistado, titulo_entrevista, datap_entrevista, cargo_entrevistado, url_video, area) VALUES
('Pierre Ferreira', 'Entrevista para escola sobre a profissão', '2024-11-22', 'Treinador Físico Comportamental', 'https://www.youtube.com/embed/xmDCLzBKRis?si=JU1HUQzniVWUgqDp', 'Educação Física'),
('Alessandra', 'Entrevista - Educação Física - Alessandra', '2024-11-24', 'Professora de Educação Física', 'https://www.youtube.com/embed/iMePkKPq_vc?si=OFDwe2gnHrK3Clh7', 'Educação física'),
('Isabela', 'Entrevista - Artes', '2024-11-24', 'Professora de Artes', 'https://www.youtube.com/embed/HC2Q4Y4y6U4?si=axW7DNIXNnW7ojFN', 'Artes'),
('Iara Lage', 'Entrevista - Artes', '2024-11-24', 'Professora de Artes', 'https://www.youtube.com/embed/0oY_W0n0eWo?si=dgq9-ypKvNi4iQc-', 'Artes');

SELECT * FROM entrevistas;

INSERT INTO autores(nome_autor) VALUES 
('Camila Boehm'),
('Ana Beatriz Dias'),
('Barbie Latza Nadeau'),
('Fernanda Pinotti'),
('Da CNN'),
('Do R7'),
('Bruna Barone'),
('Redação');

SELECT * FROM autores;

INSERT INTO noticias(id_autor, titulo_noticia, subtitulo_noticia, texto_noticia, categoria, datap_noticia, url_imagem) VALUES

INSERT INTO noticias(id_autor, titulo_noticia, subtitulo_noticia, texto_noticia, area, datap_noticia, url_imagem) VALUES

(9, 'Exposição no Museu do Ipiranga mostra efeitos da emergência climática no Brasil', '"Onde há fumaça: arte e emergência climática" conta com releitura do quadro "Independência ou Morte", de Pedro Américo', 'Nova exposição no Museu do Ipiranga, localizado na capital paulista, aborda emergência climática e dá visibilidade ao processo de degradação ambiental e social ao longo do desenvolvimento do Brasil. A mostra “Onde há fumaça: arte e emergência climática”, que foi aberta na terça-feira (5), propõe diálogo entre peças do acervo e obras contemporâneas, questionando o modelo de progresso do país.
Segundo o curador Vítor Lagoeiro, a exposição se propõe a olhar para o acervo do museu e entender como aquelas imagens já dão alguns indícios de como o país chegou ao cenário atual. “Muito do que a gente tem ali no museu são imagens que celebram uma forma de ocupação do território que foi muito pautada pelo latifúndio, trabalho escravo e pela monocultura. Estes são três pilares que contribuem para inaugurar a degradação ambiental que acontece no Brasil há tantos séculos”, disse à Agência Brasil.
Lagoeiro ressalta que o nome da exposição foi uma coincidência em relação às queimadas que atingiram o país neste ano. Na verdade, a origem do título remonta às situações retratadas nas antigas obras que já apontavam para um desfecho negativo. “O carro de boi puxando os troncos derrubados da floresta [na obra de Pedro Américo] já é um indício de uma devastação. Este é um exemplo muito bom do que foi o nosso exercício curatorial”, afirmou.
“São imagens muito romantizadas e, a princípio, inofensivas, mas, quando a gente começa a adentrar as imagens deste acervo, identifica troncos derrubados, fumaça, latifúndios. A gente começa a entender um pouco as estruturas e os gestos de destruição que estão ali representados”, afirmou.
No início do século 20, quando as imagens do museu foram produzidas, havia entusiasmo com aquele modelo de progresso, destacou a chefe da Divisão de Acervo e Curadoria do Museu do Ipiranga, Aline Montenegro Magalhães. “As imagens romantizam muito tal tipo de produção como uma etapa inescapável desse progresso. E as obras contemporâneas vêm dar uma resposta: olha onde a gente chegou com essas escolhas de desenvolvimento.”
Pinturas e fotografias de artistas que estão no acervo, como Benedito Calixto e Henrique Manzo, dialogam com trabalhos de Alice Lara, André Vargas, Bruno Novelli, Davi de Jesus do Nascimento, Anderson Kary Bayá, Jaime Lauriano, Luana Vitra, Mabe Bethônico, Roberta Carvalho, (Se)cura Humana, Uýra Sodoma e Xadalu Tupã Jekupé. A curadoria é do Micrópolis, grupo formado pelos arquitetos e pesquisadores Felipe Carnevalli e Marcela Rosenburg, além de Vítor Lagoeiro, junto à equipe do museu.
Independência e Morte
Uma releitura de “Independência ou Morte” (1888), de Pedro Américo, obra mais popular do Museu do Ipiranga e presente em livros didáticos, abre a exposição, já apresentando os temas que guiaram a curadoria. Intitulada “Independência e Morte” (2022), a obra de Jaime Lauriano substitui os símbolos e gestos de heroísmo patriótico por efeitos das tragédias ambientais decorrentes do rompimento recente de barragens de mineração no país, além de usar frases que remetem aos problemas ambientais.', 'Artes', '2024-11-06', 'https://www.cnnbrasil.com.br/wp-content/uploads/sites/12/2024/11/clima-exposicao-museu-do-ipiranga-e1730899619600.webp?w=1113');

(10, 'Interruptor molecular sintético permite “pintar” com luz natural; entenda', 'Novo estudo relata cristais líquidos imprimíveis com aplicações que vão desde telas de eficiência energética até marcas dágua de alta tecnologia', 'Outras aplicações para cristais líquidos podem um dia ser possíveis, alimentadas por luz natural, segundo sugere um novo estudo da revista Nature Chemistry, realizado por pesquisadores da Faculdade de Dartmouth e da Southern Methodist University.
Essas utilizações permitem incluir lasers de cristal líquido, telas de exibição que podem ser facilmente impressas e apagadas, e etiquetas microscópicas que podem ser adicionadas a notas bancárias para deter falsificadores.
Os cristais líquidos existem em fase própria e podem fluir como líquidos, mas como suas moléculas são organizadas de uma forma um tanto ordenada, elas podem ser facilmente manipuladas para refletir a luz. Essa flexibilidade fez dos cristais líquidos o material de referência para telas de telefones, TVs e computadores com eficiência energética.
A pesquisa ainda cita que no coração desses gadgets está um interruptor molecular sintético que pode desencadear mudanças de forma em cristais líquidos que permitem que eles reflitam cores diferentes.
Projetado no laboratório de Ivan Aprahamian, um professor de química de Dartmouth, o interruptor é feito da molécula orgânica triptycene e uma classe de compostos chamados hidrazonas que podem ligar e desligar com um pulso de luz — um feixe de luz intenso e fino que se forma quando a energia se concentra no tempo.
No estudo, Aprahamian e seus colegas mostram que as hidrazonas podem ser anexadas ao triptycene de tal forma que a simetria da molécula se quebra, tornando-a quiral. Moléculas quirais vêm em duas formas de imagem espelhada que, como nossas mãos, não podem ser completamente sobrepostas uma à outra.
Quando o triptycene quiral interage com uma molécula de cristal líquido, ele desencadeia uma cadeia de eventos que faz com que outras moléculas de cristal líquido se alinhem, reorganizando-se em hélices retorcidas, semelhantes ao DNA.
“Ao aumentar ou diminuir o tom da estrutura helicoidal, podemos controlar a cor que ela reflete”, diz Aprahamian. O estudo fornece reproduções vívidas de “O Grito”, de Edvard Munch, e “A Noite Estrelada”, de Van Gogh, como prova. Veja um exemplo acima.
Em um processo que lembra a serigrafia multicolorida, os pesquisadores usaram o pequeno projetor para projetar luz por meio de uma série de estênceis em uma tela improvisada feita de cristais líquidos dopados com triptycene quiral. Novas cores foram adicionadas, uma por uma, ao brilhar a luz por vários períodos na parte da tela deixada exposta pelo estêncil.
O laboratório de Aprahamian já projetou interruptores de hidrazona antes, mas esta versão é a primeira a provar ser capaz de refletir a cor visível de um cristal líquido. O estudo descreve em detalhes o que acontece no nível molecular, o que pode ajudar os pesquisadores a investigar melhor os cristais líquidos para novas aplicações.', 'Artes', '2024-10-17', 'https://www.cnnbrasil.com.br/wp-content/uploads/sites/12/2024/10/o-grito-interruptor-molecular.jpg?w=700');

(11, 'Vendedor de sucata encontrou um Picasso de mais R$ 36 mi em porão', 'Quadro ficou na casa da família italiana por mais de 60 anos antes de sua origem ser descoberta', 'Uma pintura descoberta por um negociante de ferro-velho em um porão de uma vila italiana há seis décadas é, na verdade, uma obra original de Pablo Picasso que pode ser vendida por milhões, de acordo com especialistas.
Luigi Lo Rosso costumava passar os dias vasculhando casas abandonadas e aterros sanitários em busca de tesouros para vender na loja de penhores da família em Pompeia, Itália. Em 1962, ele encontrou uma tela com uma pintura assimétrica de uma mulher em um porão da vila da ilha vizinha de Capri.
Acredita-se agora que a pintura seja uma imagem distorcida da fotógrafa e poetisa francesa Dora Maar, que foi amante de Picasso, de acordo com Luca Gentile Canal Marcante, especialista em arte e presidente honorário da Arcadia Foundation, uma organização sem fins lucrativos de restauração de arte sediada na Suíça. A pintura a óleo sobre tela apresenta o estilo assimétrico de Picasso, de uma mulher com um vestido azul e batom vermelho.
Com apenas 24 anos, Lo Rosso não percebeu que a assinatura no canto superior esquerdo da obra de arte, que simplesmente dizia “Picasso”, significava alguma coisa, disse seu filho Andrea Lo Rosso à CNN nesta terça-feira (2).
O velho Lo Rosso, que morreu em 2021, colocou o quadro em uma moldura barata e o deu de presente para sua esposa — para desgosto dela, segundo seu filho. Ela não achou que o quadro fosse bonito o suficiente para vender, então ele ficou pendurado na casa da família por cerca de 50 anos e depois em um restaurante que eles possuíam. “Quando minha mãe pendurou o desenho na parede para decorar a casa, renomeando-o como `o rabisco` devido à estranheza do rosto da mulher retratada, eu ainda nem tinha nascido”, disse Andrea Lo Rosso. “Pelas histórias do meu pai, sei que havia duas telas recuperadas do lixão de Capri. No entanto, apenas uma era assinada por Picasso. Ambas estavam cobertas de terra e cal e minha mãe as estendeu e lavou com detergente, como se fossem tapetes”, falou.
Na década de 1980, quando Andrea Lo Rosso estava no ensino fundamental, ele viu “Buste de femme Dora Maar” de Picasso em um livro de história da arte e descobriu que o pintor espanhol passou um tempo em Capri na década de 1950. E então ele disse aos pais que a pintura poderia ter algum valor.
Assim começou uma jornada de décadas para autenticar a assinatura na obra de arte. A família disse que entrou em contato com historiadores de arte, muitos dos quais disseram que não era original, mas se ofereceram para retirá-lo de suas mãos. Desconfiados, eles o registraram na polícia de patrimônio da Itália, que a princípio pensou que pudesse ser roubado, mas, como não estava autenticado na época, permitiu que a família o guardasse.
A obra de arte está trancada em um cofre em Milão desde 2019. Finalmente, no mês passado, Cinzia Altieri, grafóloga de um tribunal de patrimônio em Milão, conseguiu certificar a assinatura de Picasso como autêntica. Altieri trabalhou na pintura durante meses, comparando-a com outras obras de Picasso e realizando testes forenses para garantir que ela tivesse sido assinada na mesma época em que foi pintada.
“Não há dúvida de que a assinatura é dele”, ela disse em uma declaração à mídia italiana local na segunda-feira (1º). “Não havia nenhuma evidência para demonstrar sua natureza apócrifa”. O especialista em arte Marcante, que trabalhou com a família Lo Rosso, disse à CNN que está confiante de que a pintura é autêntica.
A pintura provavelmente vale cerca de 6 milhões de euros (mais de R$ 36 milhões), de acordo com as avaliações de Altieri e Marcante, com base no mercado de arte atual.
Se for certificado pela Fundação Picasso em Paris, o quadro se tornará ainda mais valioso.
“Estou feliz, mas vamos esperar para brindar, ainda falta um passo antes de considerarmos essa história incrível encerrada”, disse Andrea Lo Rosso. “Continuo trabalhando como faço todos os dias na esperança de que mesmo em Paris eles se convençam da autenticidade da pintura.”
A CNN entrou em contato com a Fundação Picasso para comentar. Lo Rosso e seus irmãos dizem que quando a pintura for finalmente reconhecida pela Fundação Picasso, o que pode mais que dobrar seu valor, eles a leiloarão em homenagem ao pai, que queria que a pintura fosse certificada e vendida.', 'Artes', '2024-10-02', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvgQc8VfriRSnJIa3xUG77zLgT1DSkRVZFXg&s');

(12, 'Após suspeitas de falsificação, nova obra de Tarsila do Amaral é descoberta', 'Descoberta histórica: obra inédita de Tarsila do Amaral desafia polêmicas e reforça legado artístico nacional', 'Uma obra inédita de Tarsila do Amaral (1886-1973) foi descoberta mais de 50 anos após a morte da artista. A obra, "Paisagem 1925", esteve no meio de uma polêmica ao ter sua autenticidade questionada no início do ano.
Após suspeitas de falsificação terem sido levantadas durante a SP Arte, maior feira de arte da América Latina, em abril, a tela foi submetida à perícia de Douglas Quintale, perito no Tribunal de Justiça do Estado de São Paulo, sócio proprietário do Quintale Art Law e presidente do Comitê de Autenticação de Obras de Tarsila do Amaral.
Em meio a esses boatos, a empresa responsável por gerir a marca da artista, Tarsila S.A., comandada por Paola Montenegro, esclareceu que Quintale é o único perito autorizado para certificar os trabalhos da pintora.
"Atualmente, é impossível, por mais que uma pessoa conheça obras de arte ou a produção de um artista, dizer se uma obra é falsa ou verdadeira apenas pelo aspecto plástico ou exame visual. São disciplinas e ciências afins que vão comprovar e corroborar premissas para uma conclusão objetiva", afirmou Quintale.
A pintura, vista pessoalmente por menos de 10 pessoas, data de 1925 e faz parte da valorizada fase Pau Brasil da artista, com caráter nacionalista e influência cubista, que vai de 1924 a 1928. Nesta época, Tarsila estava de volta de Paris para morar nas fazendas de sua família no interior de São Paulo, e começou a pintar paisagens típicas brasileiras.
A década de 1920 é considerada a fase mais valiosa das obras de Tarsila do Amaral.
"Tarsila é uma artista que produziu muito pouco em vida; existem menos de 200 pinturas catalogadas. É uma produção muito escassa. Desta forma, poder revelar uma obra inédita significa aumentar o alcance de todo o trabalho da artista. É um patrimônio nacional que agora será descoberto pelo mundo todo", disse Thomaz Pacheco, fundador da OMA Galeria, que coordenou a certificação da nova obra.', 'Artes', '2024-08-20', 'https://cdn.oantagonista.com/uploads/2024/08/Paisagem-1925-Tarsila-do-Amaral.-Credito-Felipe-Berndt-1--1024x566.webp');

(13, 'Homem destrói escultura do artista chinês Ai Weiwei em exposição na Itália', 'Autor do crime que empurrou propositalmente a obra era conhecido no mundo da arte', 'Durante a abertura de uma exposição no Palazzo Fava, na cidade italiana de Bolonha, um homem destruiu uma escultura do artista e ativista chinês Ai Weiwei na última sexta-feira (20), informou um porta-voz da exposição.
Imagens de câmeras de segurança – publicadas na conta de Ai Weiwei no Instagram – mostraram o homem empurrando violentamente a escultura, quebrando-a e em seguida. Ele ainda segura um pedaço da peça sobre sua cabeça.
A obra em questão era o “Porcelain Cube”, um cubo de porcelana nas azul e branco, disse o porta-voz.
O curador da exposição, Arturo Galansino, disse que o autor do crime era bem conhecido no mundo da arte.
“Infelizmente, eu conheço o autor desse gesto de falta de consideração por uma série de episódios perturbadores e prejudiciais ao longo dos anos envolvendo várias exposições e instituições em Florença”, disse Galansino.
A polícia de Bolonha disse à mídia local que o homem tcheco de 57 anos foi preso depois de ter sido detido pela segurança do museu.
O porta-voz informou que a exposição de arte, intitulada “Quem sou eu?”, foi aberta no sábado normalmente e que a obra será substituída por uma impressão em tamanho real do cubo. A exposição deve ficar em cartaz até 4 de maio do ano que vem.
Ainda não ficou claro como o homem entrou no prédio durante o evento, que era apenas para convidados.
', 'Artes', '2024-09-23', 'https://s2-g1.glbimg.com/BS6NwyY17ofFLa6zR9hBslQtPIo=/0x0:1462x975/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2024/a/7/AXkM8fTneA1fCNnGqGhw/ap24268354659000.jpg');

(14, 'Pianista transforma avisos sonoros do metrô de SP em música', 'Helena circula diariamente pelo transporte público da capital paulista e viu um tom melódico em sua rotina', 'Uma estudante e pianista de 20 anos chamou a atenção nas redes sociais ao transformar avisos sonoros do metrô de São Paulo em música. Helena circula diariamente pelo transporte público da capital paulista e conseguiu memorizar a melodia https://record.r7.com/playerb74ae18e-cc64-4928-beb8-e562f7d53d34/', 'Artes', '2024-11-05', 'https://i.ytimg.com/vi/R8-IEflBco0/maxresdefault.jpg');

(15,'O cinema mais bonito do mundo agora tem telas superpotentes', 'Display de LED criado pela Samsung dá vida aos pôsteres de filmes exibidos no saguão do Pathé Palace com mais de 1 bilhão de cores', 'Conhecido como o cinema mais bonito do mundo, o Pathé Palace, em Paris, na França, foi reinaugurado após cinco anos de reformas com novas experiências promovidas pela Samsung Electronics.
O local único com arquitetura de Renzo Piano agora tem seis novas telas LED: quatro Onyx 4K que medem mais de 10 metros de largura e duas Onyx 2K com 5 metros de largura — prometendo outro nível de qualidade de imagem.
“Essas telas de ponta se justapõem brilhantemente ao cinema histórico, misturando o clássico com o moderno para dar aos espectadores uma experiência verdadeiramente única”, disse Menno van den Berg, presidente da Samsung Electronics France.
Segundo a fabricante sul-coreana, o Samsung Onyx é o primeiro display LED de cinema certificado pela Digital Cinema Initiatives (DCI) do mundo para exibição teatral. As telas são seis vezes mais brilhantes do que os projetores de filme típicos, permitindo cores mais vibrantes.
“Os filmes são mais poderosos quando nos mergulham completamente em seus mundos, e a tecnologia desempenha um papel crucial nessa mágica”, afirmou Jacques Durand, Diretor de Informação do Pathé Group. 
A nova tecnologia também promete brilho aprimorado e amplificação de cores consistente em filmes 3D. “O texto da legenda e até mesmo pequenos detalhes visuais ganham clareza sem precedentes e com menos tonturas que podem ocorrer em cinemas 3D tradicionais.”
Experiência completa
O público do Pathé Palace também terá a chance de visualizar as programações do cinema e trailers de filmes por uma Smart Signage. A tecnologia dá vida aos pôsteres com mais de 1 bilhão de cores disponíveis, segundo a empresa. 
Já o saguão principal ganhou uma versão do The Wall, que aumenta a resolução para 8K e otimiza a qualidade da imagem para ter menos ruído visual. A tela usa a tecnologia MICRO LED, que controla pixels individualmente para fornecer precisão e profundidade na imagem.
A parceria da Samsung com a Pathé não é de agora: a fabricante já fez instalações nas unidades Pathé Beaugrenelle, em Paris, e na Pathé Bellecour, em Lyon.', 'Artes', '2024-10-24', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG5pR0w6HTMcmEgoZI1FfMBgj3ZPnIOs5IBw&s');

(16, 'Artistas levam espetáculo de dança para escolas públicas da Capital', 'Última apresentação do projeto será nesta sexta-feira, na Casa de Ensaio, na Capital', 'Explorando as profundezas da ansiedade por meio da arte do movimento, as artistas Isabela Lucas Pantarotto, Isadora Lucas Pantarotto e Lais Ferreira apresentaram o espetáculo ´(En)casulo´ para cerca de 700 alunos de escolas estaduais nos últimos meses. O projeto está sendo realizado com o incentivo do Fundo de Investimentos Culturais de Mato Grosso do Sul (FIC/MS), da Fundação de Cultura de MS (FCMS), do Governo do Estado de MS, com apoio do Estúdio de Dança Beatriz de Almeida e da Arado Cultural.
Ao todo, foram realizadas 10 apresentações do espetáculo para alunos da Escola Estadual Leontino Alves de Oliveira (Rio Negro/MS), da E. E José Alves Ribeiro (Rochedo/MS), da E.E. José Barbosa Rodrigues (Campo Grande/MS) e da E.E. Prof. Alberto Elpídio Ferreira Dias (Campo Grande/MS). E, como contrapartida social, o projeto realizou uma apresentação para os alunos dos cursos de Licenciatura em Dança e Licenciatura em Teatro, da UEMS e, apresenta ´(En)casulo´ nesta sexta-feira (08), às 14 horas, para os alunos da Casa de Ensaio.
Nas profundezas da ansiedade - ´(En)casulo´ é uma peça de dança contemporânea que explora as profundezas da ansiedade por meio da arte do movimento, oferecendo uma reflexão poderosa sobre os desafios emocionais da vida moderna. O espetáculo mergulha no tema da ansiedade por meio de uma linguagem coreográfica audaciosa e emotiva.
O título da obra, que combina a ideia de ´enredamento´ com o conceito de ´casulo´, simboliza a dualidade entre a sensação de aprisionamento e o desejo de transformação. A coreografia utiliza uma mistura de movimentos fluidos e desconexos para ilustrar o conflito interno e o processo de metamorfose pessoal, refletindo as tensões e o anseio de libertação que caracterizam a experiência da ansiedade.
Com uma abordagem inovadora e uma interpretação profunda, ´(En)casulo´ oferece uma visão introspectiva e impactante sobre a ansiedade, convidando os espectadores a confrontarem suas próprias inquietações e a buscar momentos de alívio e clareza. A peça é uma experiência transformadora que ressoa profundamente em todos que a assistem. O espetáculo é uma criação da coreógrafa Isabela Lucas Pantarotto, com o auxílio das intérpretes criadoras Isadora Lucas Pantarotto e Lais Ferreira. Mais informações pelo Instagram @encasulo_.', 'Artes', '2024-11-06', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScI9wfJXGg9IICZcxXcNHe4r3Xj1UYF5Otsg&s');

(1, 'Quase metade das escolas brasileiras não têm local para prática de esporte', 'Análise da carência de infraestrutura esportiva e da qualificação docente nas escolas de educação básica do Brasil', 'Um levantamento feito pelo Ministério da Cidadania aponta que quase metade das escolas de educação básica do país não tem nenhum espaço para os alunos praticarem esporte. Os dados, computados a partir do Censo Escolar da Educação Básica 2020, mostram que, de 135.263 escolas do ensino fundamental I ao médio, 47% não possui nenhuma instalação para a prática desportiva.
Quando são consideradas apenas as quadras esportivas, esse número cai para apenas 45,1% das escolas. O estudo também leva em consideração a presença de terreirões (em 9,7% das escolas), de salas multiuso (7,4%), piscina (2,7%) e sala/estúdio de dança (1,8%). Segundo o Ministério da Cidadania, os terreirões equivalem a quadra de esportes.
Esses números, cruzados com os de escolas com materiais para prática desportiva (como bolas, bambolês, cones, cordas, etc), mostram um problema ainda maior. Das escolas de educação básica do Brasil, só 40,6% têm tanto local de prática quanto materiais. Em 27% das escolas brasileiras não existe nem uma coisa nem outra.
"Considera-se que a melhoria da infraestrutura das escolas é uma das maneiras de fortalecer o papel do poder público de fomentar as práticas desportivas para as crianças e os adolescentes em idade escolar", avalia o relatório, que mostra que o problema é mais grave nas escolas municipais.Somente 32% delas têm quadra. Na rede privada, este índice, de 60%, é mais baixo do que nas escolas estaduais (65%) e nas federais (80%).
O levantamento também se aprofundou em dados sobre a ausência de professores formados em Educação Física nas escolas brasileiras. De acordo com o estudo, 95% delas têm docentes que dão aula de educação física, mas só 69,9% das aulas dessa disciplina são ministradas por professores especializados.
Desde 2003, o principal programa do antigo Ministério do Esporte para incentivar a prática esportiva nas escolas é o Segundo Tempo, que atende crianças e adolescentes no contraturno escolar. Em outubro, existiam apenas 78 convênios ativos, que estabeleceram a meta de 168 núcleos esportivos e de atenderem 20.520 jovens, somente.
', 'Educação Física', '2021-12-14', 'https://br.freepik.com/fotos-gratis/homem-basquetebol-jogando-em-a-aro_2698160.htm');

(2, ' Escolas Investem em Aulas de Educação Física para Melhorar Saúde Mental dos Alunos', ' Exercícios físicos ajudam na liberação de hormônios como endorfina e serotonina', 'Pesquisas indicam que a prática regular de atividades físicas pode contribuir significativamente para o bem-estar emocional dos jovens. Exercícios físicos ajudam na liberação de hormônios como endorfina e serotonina, que promovem a sensação de bem-estar e relaxamento, aliviando sintomas de estresse.
Além disso, o aumento da atividade física escolar tem sido associado a melhorias no foco e na produtividade dos estudantes. Ao promoverem um ambiente escolar que valoriza o movimento e o autocuidado, as escolas esperam que os alunos possam se concentrar melhor em suas atividades acadêmicas e desenvolver habilidades para enfrentar desafios emocionais.', 'Educação Física', '2008-01-02', 'https://www.google.com/imgres?q=Pesquisas%20indicam%20que%20a%20pr%C3%A1tica%20regular%20de%20atividades%20f%C3%ADsicas%20pode%20contribuir%20significativamente%20para%20o%20bem-estar%20emocional%20dos%20jovens.%20Exerc%C3%ADcios%20f%C3%ADsicos%20ajudam%20na%20libera%C3%A7%C3%A3o%20de%20horm%C3%B4nios%20como%20endorfina%20e%20serotonina%2C%20que%20promovem%20a%20sensa%C3%A7%C3%A3o%20de%20bem-estar%20e%20relaxamento%2C%20aliviando%20sintomas%20de%20estresse.%0D%0A%0D%0AAl%C3%A9m%20disso%2C%20o%20aumento%20da%20atividade%20f%C3%ADsica%20escolar%20tem%20sido%20associado%20a%20melhorias%20no%20foco%20e%20na%20produtividade%20dos%20estudantes.%20Ao%20promoverem%20um%20ambiente%20escolar%20que%20valoriza%20o%20movimento%20e%20o%20autocuidado%2C%20as%20escolas%20esperam%20que%20os%20alunos%20possam%20se%20concentrar%20melhor%20em%20suas%20atividades%20acad%C3%AAmicas%20e%20desenvolver%20habilidades%20para%20enfrentar%20desafios%20emocionais.&imgurl=https%3A%2F%2Fwww.unisuam.edu.br%2Fwp-content%2Fuploads%2F2023%2F09%2Fesporte-saude-mental.jpg&imgrefurl=https%3A%2F%2Fwww.unisuam.edu.br%2Fnoticias%2Fviver-bem%2Fa-importancia-das-atividades-fisicas-para-saude-mental%2F&docid=_MGIJbZ46KQrOM&tbnid=a6-hProexWC07M&vet=12ahUKEwjYkb6vsf2JAxX4rZUCHYx-I5oQM3oECGUQAA..i&w=1100&h=630&hcb=2&ved=2ahUKEwjYkb6vsf2JAxX4rZUCHYx-I5oQM3oECGUQAA');

(3, 'Esportes de Resistência Ganha Popularidade nas Aulas de Educação Física', 'Essas modalidades estão sendo incorporadas ao currículo para desenvolver a resistência física e mental dos estudantes', 'Nas aulas de educação física, esportes de resistência como corrida de longa distância, ciclismo e natação vêm ganhando cada vez mais popularidade. Essas modalidades estão sendo incorporadas ao currículo para desenvolver a resistência física e mental dos estudantes.
Os professores relatam um aumento no interesse e no engajamento dos alunos ao participarem dessas atividades. Eles observam que, além de promover saúde e condicionamento físico, os esportes de resistência ajudam os estudantes a desenvolverem disciplina e superação de limites pessoais.
Com o crescimento dessas práticas nas escolas, a expectativa é que os alunos não só aprimorem suas capacidades físicas, mas também fortaleçam aspectos emocionais e de autoconfiança, habilidades importantes para seu desenvolvimento integral.', 'Educação Física', '2024-06-24', 'https://www.google.com/imgres?q=Nas%20aulas%20de%20educa%C3%A7%C3%A3o%20f%C3%ADsica%2C%20esportes%20de%20resist%C3%AAncia%20em%20corrida%20de%20longa%20dist%C3%A2ncia%2C%20ciclismo%20e%20nata%C3%A7%C3%A3o%20v%C3%AAm%20ganhando%20cada%20vez%20mais%20popularidade.%20Essas%20modalidades%20est%C3%A3o%20sendo%20incorporadas%20ao%20curr%C3%ADculo%20para%20desenvolver%20a%20resist%C3%AAncia%20f%C3%ADsica%20e%20mental%20dos%20estudantes.%20Os%20professores%20relatam%20um%20aumento%20no%20interesse%20e%20no%20engajamento%20dos%20alunos%20ao%20participarem%20dessas%20atividades.%20Eles%20observam%20que%2C%20al%C3%A9m%20de%20promover%20sa%C3%BAde%20e%20condicionamento%20f%C3%ADsico%2C%20os%20esportes%20de%20resist%C3%AAncia%20ajudam%20os%20estudantes%20a%20desenvolverem%20disciplina%20e%20supera%C3%A7%C3%A3o%20de%20limites%20pessoais.%20Com%20o%20crescimento%20dessas%20pr%C3%A1ticas%20nas%20escolas%2C%20a%20expectativa%20%C3%A9%20que%20os%20alunos%20n%C3%A3o%20s%C3%B3%20aprimorem%20suas%20capacidades%20f%C3%ADsicas%2C%20mas%20tamb%C3%A9m%20fortale%C3%A7am%20aspectos%20emocionais%20e%20de%20autoconfian%C3%A7a%2C%20habilidades%20importantes%20para%20seu%20desenvolvimento%20integral&imgurl=https%3A%2F%2Fwww.institutoclaro.org.br%2Feducacao%2Fwp-content%2Fuploads%2Fsites%2F2%2F2021%2F06%2Fatletismo-fundo.png&imgrefurl=https%3A%2F%2Fwww.institutoclaro.org.br%2Feducacao%2Fpara-ensinar%2Fplanos-de-aula%2Fatletismo-introducao-a-corrida-e-a-marcha%2F&docid=tofEo-HCaan7TM&tbnid=VB1U3QIHe7x4eM&vet=12ahUKEwjxqq3VsP2JAxUjq5UCHfw0FKgQM3oECEgQAA..i&w=1079&h=463&hcb=2&ved=2ahUKEwjxqq3VsP2JAxUjq5UCHfw0FKgQM3oECEgQAA');

(4, 'Novas Diretrizes do Ministério da Educação Promovem Educação Física Inclusiva', 'O Ministério da Educação anunciou novas diretrizes para tornar as aulas de educação física mais inclusivas', 'O Ministério da Educação anunciou novas diretrizes para tornar as aulas de educação física mais inclusivas, visando abranger alunos com diferentes habilidades e necessidades. Essas mudanças buscam garantir que todos os estudantes, independentemente de limitações físicas, possam participar das atividades.
As novas orientações incentivam práticas adaptativas, que permitem aos professores ajustar as atividades para atender às diversas capacidades motoras dos alunos. Dessa forma, a educação física deixa de ser uma disciplina restrita a habilidades atléticas e passa a valorizar o desenvolvimento individual.
Ao promover uma educação física inclusiva, o Ministério visa não só fortalecer as capacidades motoras dos estudantes, mas também estimular a convivência e o respeito à diversidade. A expectativa é que essas práticas contribuam para um ambiente escolar mais acolhedor e colaborativo.', 'Educação Física', '2023-01-22', 'https://www.google.com/imgres?q=O%20Minist%C3%A9rio%20da%20Educa%C3%A7%C3%A3o%20anunciou%20novas%20diretrizes%20para%20tornar%20as%20aulas%20de%20educa%C3%A7%C3%A3o%20f%C3%ADsica%20mais%20inclusivas%2C%20visando%20abranger%20alunos%20com%20diferentes%20habilidades%20e%20necessidades.%20Essas%20mudan%C3%A7as%20buscam%20garantir%20que%20todos%20os%20estudantes%2C%20independentemente%20de%20limita%C3%A7%C3%B5es%20f%C3%ADsicas%2C%20possam%20participar%20das%20atividades.%0D%0A%0D%0AAs%20novas%20orienta%C3%A7%C3%B5es%20incentivam%20pr%C3%A1ticas%20adaptativas%2C%20que%20permitem%20aos%20professores%20ajustar%20as%20atividades%20para%20atender%20%C3%A0s%20diversas%20capacidades%20motoras%20dos%20alunos.%20Dessa%20forma%2C%20a%20educa%C3%A7%C3%A3o%20f%C3%ADsica%20deixa%20de%20ser%20uma%20disciplina%20restrita%20a%20habilidades%20atl%C3%A9ticas%20e%20passa%20a%20valorizar%20o%20desenvolvimento%20individual.%0D%0A%0D%0AAo%20promover%20uma%20educa%C3%A7%C3%A3o%20f%C3%ADsica%20inclusiva%2C%20o%20Minist%C3%A9rio%20visa%20n%C3%A3o%20s%C3%B3%20fortalecer%20as%20capacidades%20motoras%20dos%20estudantes%2C%20mas%20tamb%C3%A9m%20estimular%20a%20conviv%C3%AAncia%20e%20o%20respeito%20%C3%A0%20diversidade.%20A%20expectativa%20%C3%A9%20que%20essas%20pr%C3%A1ticas%20contribuam%20para%20um%20ambiente%20escolar%20mais%20acolhedor%20e%20colaborativo.%0D%0A&imgurl=https%3A%2F%2Fimpulsiona.org.br%2Fwp-content%2Fuploads%2F2024%2F02%2Fgettyimages-1281045590-scaled.jpg&imgrefurl=https%3A%2F%2Fimpulsiona.org.br%2Fcurso-educacao-fisica-inclusiva%2F&docid=DnH9YC680WENzM&tbnid=I5GZaXAnSFSDiM&vet=12ahUKEwjH26DIsf2JAxUqhJUCHU9VPU4QM3oECEgQAA..i&w=2560&h=1707&hcb=2&ved=2ahUKEwjH26DIsf2JAxUqhJUCHU9VPU4QM3oECEgQAA');

(5, 'Tecnologia e Educação Física: Como Wearables Estão Mudando o Jogo', 'Diversas escolas estão adotando dispositivos vestíveis, como monitores de frequência cardíaca e contadores de passos', 'Diversas escolas estão adotando dispositivos vestíveis, como monitores de frequência cardíaca e contadores de passos, para acompanhar o desempenho físico dos alunos. Essa tecnologia permite que professores tenham acesso a dados detalhados sobre a atividade de cada estudante.
Com essas informações, os educadores conseguem adaptar e personalizar os exercícios de acordo com as necessidades individuais dos alunos, ajustando o nível de intensidade e o tipo de atividade para promover um desenvolvimento mais equilibrado e seguro.
A introdução desses dispositivos nas aulas de educação física visa não apenas melhorar o desempenho físico, mas também incentivar hábitos saudáveis e um acompanhamento mais atento do bem-estar dos estudantes ao longo do tempo.', 'Educação Física', '2022-05-19', 'https://www.google.com/imgres?q=Diversas%20escolas%20est%C3%A3o%20adotando%20dispositivos%20vest%C3%ADveis%2C%20como%20monitores%20de%20frequ%C3%AAncia%20card%C3%ADaca%20e%20contadores%20de%20passos%2C%20para%20acompanhar%20o%20desempenho%20f%C3%ADsico%20dos%20alunos.%20Essa%20tecnologia%20permite%20que%20professores%20tenham%20acesso%20a%20dados%20detalhados%20sobre%20a%20atividade%20de%20cada%20estudante.%0D%0A%0D%0ACom%20essas%20informa%C3%A7%C3%B5es%2C%20os%20educadores%20conseguem%20adaptar%20e%20personalizar%20os%20exerc%C3%ADcios%20de%20acordo%20com%20as%20necessidades%20individuais%20dos%20alunos%2C%20ajustando%20o%20n%C3%ADvel%20de%20intensidade%20e%20o%20tipo%20de%20atividade%20para%20promover%20um%20desenvolvimento%20mais%20equilibrado%20e%20seguro.%0D%0A%0D%0AA%20introdu%C3%A7%C3%A3o%20desses%20dispositivos%20nas%20aulas%20de%20educa%C3%A7%C3%A3o%20f%C3%ADsica%20visa%20n%C3%A3o%20apenas%20melhorar%20o%20desempenho%20f%C3%ADsico%2C%20mas%20tamb%C3%A9m%20incentivar%20h%C3%A1bitos%20saud%C3%A1veis%20e%20um%20acompanhamento%20mais%20atento%20do%20bem-estar%20dos%20estudantes%20ao%20longo%20do%20tempo.&imgurl=https%3A%2F%2Fs2-ge.glbimg.com%2F0R7o157FxYPTb-9L_8fYKYXutsE%3D%2F0x0%3A2121x1414%2F984x0%2Fsmart%2Ffilters%3Astrip_icc()%2Fi.s3.glbimg.com%2Fv1%2FAUTH_bc8228b6673f488aa253bbcb03c80ec5%2Finternal_photos%2Fbs%2F2020%2FE%2Fo%2F88PzhxRd2fqv4uvKQ2XQ%2Fsmartw.jpg&imgrefurl=https%3A%2F%2Fge.globo.com%2Feu-atleta%2Fnoticia%2Facessorios-inteligentes-auxiliam-no-monitoramento-cardiaco.ghtml&docid=OgyBf7f6TF1B1M&tbnid=FLVSx6FoGyT9PM&vet=12ahUKEwi70_CYs_2JAxWRlJUCHaOJHE0QM3oECBIQAA..i&w=984&h=656&hcb=2&ved=2ahUKEwi70_CYs_2JAxWRlJUCHaOJHE0QM3oECBIQAA');

(6, 'Benefícios do Alongamento Escolas Introduzem Sessões de Alongamento Antes das Aulas', 'Em várias escolas, dispositivos vestíveis, como monitores de frequência cardíaca
', 'Em várias escolas, dispositivos vestíveis, como monitores de frequência cardíaca e contadores de passos, estão sendo incorporados às aulas de educação física para acompanhar o progresso físico dos alunos. Esses aparelhos fornecem dados em tempo real, ajudando professores a entender melhor o nível de atividade de cada estudante.
Com essas informações, os professores podem personalizar os exercícios de acordo com as necessidades individuais, ajustando a intensidade e a duração das atividades para promover um desenvolvimento físico adequado e seguro. Essa abordagem permite que alunos com diferentes condições físicas participem das atividades de forma mais equilibrada.
Além de promover a saúde, o uso desses dispositivos visa estimular os alunos a adotarem um estilo de vida mais ativo e consciente. A expectativa é que essa tecnologia ajude a desenvolver o autocuidado, incentivando os estudantes a monitorarem e valorizarem seu bem-estar físico ao longo de sua formação escolar.', 'Educação Física', '2017-12-23', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fartmed.com.br%2Fartigos%2Fwearables-como-o-uso-de-aparelhos-vestiveis-pode-auxiliar-educadores-fisicos&psig=AOvVaw3ZQoJDoQYmeWjt0qTCwCgi&ust=1732827424815000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCLCnja2z_YkDFQAAAAAdAAAAABAE');

(7, 'Jovens e o Sedentarismo: Programa Nacional Incentiva Atividades ao Ar Livre nas Escolas', 'Um novo programa nacional está incentivando a prática de atividades ao ar livre no currículo de educação física', 'Diante do aumento do sedentarismo entre os jovens, um novo programa nacional está incentivando a prática de atividades ao ar livre no currículo de educação física. Essa iniciativa busca introduzir os estudantes a uma rotina mais ativa, especialmente em espaços abertos e naturais.
As atividades propostas incluem caminhadas, jogos coletivos e outras práticas físicas ao ar livre que promovem movimento e interação social. Com isso, espera-se reduzir os problemas de saúde associados ao estilo de vida sedentário e ao tempo excessivo em ambientes fechados.
A meta do programa é despertar nos jovens o interesse por hábitos saudáveis e pela prática regular de exercícios, reforçando a importância de uma vida equilibrada. Ao adotar uma abordagem mais dinâmica e envolvente, as escolas visam contribuir para a formação de uma geração mais consciente sobre seu bem-estar físico e mental.', 'Educação Física', '2019-02-16', 'https://noticias.ufsc.br/files/2018/12/DSC_0034-e1545131707712-300x181.jpg ');

(8, 'Yoga e Meditação Chegam às Aulas de Educação Física', 'Essas atividades são reconhecidas por melhorar a flexibilidade', 'Em algumas escolas, práticas como yoga e meditação estão sendo integradas às aulas de educação física, proporcionando aos alunos uma experiência mais completa de bem-estar. Essas atividades são reconhecidas por melhorar a flexibilidade, o equilíbrio e a capacidade de concentração dos estudantes.
Professores que adotaram essa abordagem relatam benefícios significativos, especialmente no controle da respiração e na redução do estresse. A prática regular de yoga e meditação auxilia os alunos a desenvolverem uma postura mais calma e focada, refletindo positivamente em outras áreas de suas vidas.
Com essa iniciativa, as escolas buscam criar um ambiente que valorize tanto o desenvolvimento físico quanto o emocional dos alunos, promovendo hábitos saudáveis e o autocuidado desde cedo. A expectativa é que essa prática contribua para uma geração mais equilibrada e consciente de sua saúde mental e física.', 'Educação Física', '2016-01-10', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Frevistaeducacao.com.br%2F2019%2F03%2F20%2Fyoga-meditacao-escola%2F&psig=AOvVaw0RrZ5jTKzxBhIt-ESpCWBe&ust=1732827532930000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCNDlt-Gz_YkDFQAAAAAdAAAAABAE');

CREATE TABLE entrevistas (
    id_entrevista SERIAL PRIMARY KEY,
    nome_entrevistado VARCHAR(100),
    titulo_entrevista VARCHAR(100),
    datap_entrevista DATE,
    cargo_entrevistado VARCHAR(100),
    url_video VARCHAR(200),
    area VARCHAR(20)
);

INSERT INTO entrevistas(nome_entrevistado, titulo_entrevista, datap_entrevista, cargo_entrevistado, url_video, area) VALUES
('Pierre Ferreira', 'Entrevista para escola sobre a profissão', '2024-11-22', 'Treinador Físico Comportamental', 'https://www.youtube.com/embed/xmDCLzBKRis?si=JU1HUQzniVWUgqDp', 'Educação Física'),
('Alessandra', 'Entrevista - Educação Física - Alessandra', '2024-11-24', 'Professora de Educação Física', 'https://www.youtube.com/embed/iMePkKPq_vc?si=OFDwe2gnHrK3Clh7', 'Artes'),
('Isabela', 'Entrevista - Artes', '2024-11-24', 'Professora de Artes', 'https://www.youtube.com/embed/HC2Q4Y4y6U4?si=axW7DNIXNnW7ojFN', 'Artes'),
('Iara Lage', 'Entrevista - Artes', '2024-11-24', 'Professora de Artes', 'https://www.youtube.com/embed/0oY_W0n0eWo?si=dgq9-ypKvNi4iQc-', 'Artes');

CREATE TABLE integrantes (
    id_integrante SERIAL PRIMARY KEY,
    nome_integrante VARCHAR(100),
    foto_integrante VARCHAR(200),
    funcao_scrum VARCHAR(15),
    email_integrante VARCHAR(200)
);

INSERT INTO integrantes(nome_integrante, foto_integrante, funcao_scrum, email_integrante) VALUES
('Amanda Gomes Mechi', 'https://portal-noticias-html.vercel.app/Portal_Noticias/images/Amanda.site.jpeg', 'Product Owner', 'amanda.mechi@aluno.senai.br' ),
('André Lucca Santos', 'https://portal-noticias-html.vercel.app/Portal_Noticias/images/Andr%C3%A9.site.jpeg', 'Desenvolvedor', 'andre.r.santos45@aluno.senai.br'),
('Beatriz Lima', 'https://portal-noticias-html.vercel.app/Portal_Noticias/images/Beatriz.site.jpeg', 'Desenvolvedora', 'beatriz.lima14@aluno.senai.br'),
('Enzo Alves Turcovic', 'https://portal-noticias-html.vercel.app/Portal_Noticias/images/Enzo.site.jpeg', 'Scrum Master', 'enzo.turcovic@aluno.senai.br'),
('Leonardo Pedro de Oliveira', 'https://portal-noticias-html.vercel.app/Portal_Noticias/images/Leonardo.site.jpeg', 'Desenvolvedor', 'leonardo.p.oliveira12@aluno.senai.br');
