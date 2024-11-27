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
    id_autor INT NOT NULL,
    titulo_noticia VARCHAR(100),
    subtitulo_noticia TEXT,
    texto_noticia TEXT,
    categoria VARCHAR(20),
    datap_noticia DATE,
    url_imagem VARCHAR(200),
    CONSTRAINT fk_autor FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

INSERT INTO noticias(id_autor, titulo_noticia, subtitulo_noticia, texto_noticia, categoria, datap_noticia, url_imagem) VALUES
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
O velho Lo Rosso, que morreu em 2021, colocou o quadro em uma moldura barata e o deu de presente para sua esposa — para desgosto dela, segundo seu filho. Ela não achou que o quadro fosse bonito o suficiente para vender, então ele ficou pendurado na casa da família por cerca de 50 anos e depois em um restaurante que eles possuíam. “Quando minha mãe pendurou o desenho na parede para decorar a casa, renomeando-o como ‘o rabisco’ devido à estranheza do rosto da mulher retratada, eu ainda nem tinha nascido”, disse Andrea Lo Rosso. “Pelas histórias do meu pai, sei que havia duas telas recuperadas do lixão de Capri. No entanto, apenas uma era assinada por Picasso. Ambas estavam cobertas de terra e cal e minha mãe as estendeu e lavou com detergente, como se fossem tapetes”, falou.
Na década de 1980, quando Andrea Lo Rosso estava no ensino fundamental, ele viu “Buste de femme Dora Maar” de Picasso em um livro de história da arte e descobriu que o pintor espanhol passou um tempo em Capri na década de 1950. E então ele disse aos pais que a pintura poderia ter algum valor.
Assim começou uma jornada de décadas para autenticar a assinatura na obra de arte. A família disse que entrou em contato com historiadores de arte, muitos dos quais disseram que não era original, mas se ofereceram para retirá-lo de suas mãos. Desconfiados, eles o registraram na polícia de patrimônio da Itália, que a princípio pensou que pudesse ser roubado, mas, como não estava autenticado na época, permitiu que a família o guardasse.
A obra de arte está trancada em um cofre em Milão desde 2019. Finalmente, no mês passado, Cinzia Altieri, grafóloga de um tribunal de patrimônio em Milão, conseguiu certificar a assinatura de Picasso como autêntica. Altieri trabalhou na pintura durante meses, comparando-a com outras obras de Picasso e realizando testes forenses para garantir que ela tivesse sido assinada na mesma época em que foi pintada.
“Não há dúvida de que a assinatura é dele”, ela disse em uma declaração à mídia italiana local na segunda-feira (1º). “Não havia nenhuma evidência para demonstrar sua natureza apócrifa”. O especialista em arte Marcante, que trabalhou com a família Lo Rosso, disse à CNN que está confiante de que a pintura é autêntica.
A pintura provavelmente vale cerca de 6 milhões de euros (mais de R$ 36 milhões), de acordo com as avaliações de Altieri e Marcante, com base no mercado de arte atual.
Se for certificado pela Fundação Picasso em Paris, o quadro se tornará ainda mais valioso.
“Estou feliz, mas vamos esperar para brindar, ainda falta um passo antes de considerarmos essa história incrível encerrada”, disse Andrea Lo Rosso. “Continuo trabalhando como faço todos os dias na esperança de que mesmo em Paris eles se convençam da autenticidade da pintura.”
A CNN entrou em contato com a Fundação Picasso para comentar. Lo Rosso e seus irmãos dizem que quando a pintura for finalmente reconhecida pela Fundação Picasso, o que pode mais que dobrar seu valor, eles a leiloarão em homenagem ao pai, que queria que a pintura fosse certificada e vendida.', 'Artes', '2024-10-02', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvgQc8VfriRSnJIa3xUG77zLgT1DSkRVZFXg&s');

(12, 'Após suspeitas de falsificação, nova obra de Tarsila do Amaral é descoberta', 'Descoberta histórica: obra inédita de Tarsila do Amaral desafia polêmicas e reforça legado artístico nacional', 'Uma obra inédita de Tarsila do Amaral (1886-1973) foi descoberta mais de 50 anos após a morte da artista. A obra, “Paisagem 1925”, esteve no meio de uma polêmica ao ter sua autenticidade questionada no início do ano.
Após suspeitas de falsificação terem sido levantadas durante a SP-Arte, maior feira de arte da América Latina, em abril, a tela foi submetida à perícia de Douglas Quintale, perito no Tribunal de Justiça do Estado de São Paulo, sócio-proprietário do Quintale Art Law e presidente do Comitê de Autenticação de Obras de Tarsila do Amaral.
Em meio a esses boatos, a empresa responsável por gerir a marca da artista, Tarsila S.A., comandada por Paola Montenegro, esclareceu que Quintale é o único perito autorizado para certificar os trabalhos da pintora.
“Atualmente, é impossível, por mais que uma pessoa conheça obras de arte ou a produção de um artista, dizer se uma obra é falsa ou verdadeira apenas pelo aspecto plástico ou exame visual. São disciplinas e ciências afins que vão comprovar e corroborar premissas para uma conclusão objetiva”, afirmou Quintale.
A pintura, vista pessoalmente por menos de 10 pessoas, data de 1925 e faz parte da valorizada fase Pau-Brasil da artista, com caráter nacionalista e influência cubista, que vai de 1924 a 1928. Nesta época, Tarsila estava de volta de Paris para morar nas fazendas de sua família no interior de São Paulo, e começou a pintar paisagens típicas brasileiras.
A década de 1920 é considerada a fase mais valiosa das obras de Tarsila do Amaral.
“Tarsila é uma artista que produziu muito pouco em vida; existem menos de 200 pinturas catalogadas. É uma produção muito escassa. Desta forma, poder revelar uma obra inédita significa aumentar o alcance de todo o trabalho da artista. É um patrimônio nacional que agora será descoberto pelo mundo todo”, disse Thomaz Pacheco, fundador da OMA Galeria, que coordenou a certificação da nova obra.', 'Artes', '2024-08-20', 'https://cdn.oantagonista.com/uploads/2024/08/Paisagem-1925-Tarsila-do-Amaral.-Credito-Felipe-Berndt-1--1024x566.webp');

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

(15, 'O cinema mais bonito do mundo agora tem telas superpotentes', 'Display de LED criado pela Samsung dá vida aos pôsteres de filmes exibidos no saguão do Pathé Palace com mais de 1 bilhão de cores', 'Conhecido como o cinema mais bonito do mundo, o Pathé Palace, em Paris, na França, foi reinaugurado após cinco anos de reformas com novas experiências promovidas pela Samsung Electronics.
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

CREATE TABLE entrevistas (
    id_entrevista SERIAL PRIMARY KEY,
    nome_entrevistado VARCHAR(100),
    titulo_entrevista VARCHAR(100),
    datap_entrevista DATE,
    cargo_entrevistado VARCHAR(100),
    url_video VARCHAR(200)
);

INSERT INTO entrevistas(nome_entrevistado, titulo_entrevista, datap_entrevista, cargo_entrevistado, url_video) VALUES
('Pierre Ferreira', 'Entrevista para escola sobre a profissão', '2024-11-22', 'Treinador Físico Comportamental', 'https://www.youtube.com/embed/xmDCLzBKRis?si=JU1HUQzniVWUgqDp'),
('Alessandra', 'Entrevista - Educação Física - Alessandra', '2024-11-24', 'Professora de Educação Física', 'https://www.youtube.com/embed/iMePkKPq_vc?si=OFDwe2gnHrK3Clh7'),
('Isabela', 'Entrevista - Artes', '2024-11-24', 'Professora de Artes', 'https://www.youtube.com/embed/HC2Q4Y4y6U4?si=axW7DNIXNnW7ojFN'),
('Iara Lage', 'Entrevista - Artes', '2024-11-24', 'Professora de Artes', 'https://www.youtube.com/embed/0oY_W0n0eWo?si=dgq9-ypKvNi4iQc-');

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
