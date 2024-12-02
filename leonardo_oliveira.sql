CREATE TABLE simulados (
id SERIAL PRIMARY KEY,
disciplina VARCHAR(50),
descricao TEXT
);

CREATE TABLE questoes (
id_simulado INT,
nivel_dificuldade VARCHAR(20),
area VARCHAR(50),
quantidade_perguntas INT,
perguntas TEXT,
resultados INT
);


--FOREIGN KEY (id_simulado) REFERENCES simulados(id)


INSERT INTO simulados (disciplina, descricao) VALUES
('Educação Física', 'Conhecimentos Gerais'),
('Artes', 'Conhecimentos Gerais');

INSERT INTO questoes (id_simulado, nivel_dificuldade, area, quantidade_perguntas, perguntas, resultados) VALUES
(2, 'Médio', 'Artes', 1, '1. Quais são as 4 linguagens de Artes, nas redes de ensino', 100),
(2, 'Médio', 'Artes', 1, '2. São consideradas cores primárias', 100),
(2, 'Médio', 'Artes', 1, '3. Manifesto artístico pertencente às vanguardas européias do século XX, cujo lema era: "a destruição também é criação". Foi considerado o movimento propulsor das ideias surrealistas e tinha um caráter ilógico, anti-racionalista e de protesto', 100),
(2, 'Médio', 'Artes', 1, '4. Uma característica marcante da literatura de cordel é a técnica do(a)', 100),
(2, 'Médio', 'Artes', 1, '5. O principal instrumento da dança é', 100),
(2, 'Médio', 'Artes', 1, '6. O equilibrismo, o malabarismo, o contorcionismo, entre outros são manifestações artísticas ligadas ao mundo do ______. Assinale a alternativa que preencha corretamente a lacuna', 100),
(2, 'Médio', 'Artes', 1, '7. Ao pintar ou desenhar a si mesmo o artista está realizando uma obra que é denominada como', 100),
(2, 'Médio', 'Artes', 1, '8. A produção artística é definida em grande parte pelo material utilizado. A tinta atualmente adquirida em tubos ou pastilhas, em que os pigmentos são bem finos e misturados com goma, obtendo-se cores mais transparentes quando misturadas com água, é denominada', 100),
(2, 'Médio', 'Artes', 1, '9. No teatro é interessante saber que estão presentes as mais diversas modalidades artísticas: música, dança, pintura, literatura expressão corporal, maquiagem, entre outras. Ao longo do tempo, entre as diferentes variações do teatro, a mais conhecida foi a do teatro grego. Entre os gêneros teatrais gregos havia um que divertia e outro que emocionava. Assinale a alternativa CORRETA', 100),
(2, 'Médio', 'Artes', 1, '10. O __________________________________ foi um momento da História muito mais amplo e complexo. Ocorreram nesse período muitos progressos e incontáveis realizações no campo das Artes, da Literatura e das Ciências que superaram a herança clássica. O ideal do Humanismo foi sem dúvida o móvel desse progresso. Complete a frase e assinale qual foi o movimento que se refere a este período', 100),
(1, 'Médio', 'Educação Física', 1, '1. Qual é o principal objetivo do aquecimento antes da prática de atividades físicas?', 100),
(1, 'Médio', 'Educação Física', 1, '2. O que caracteriza uma atividade aeróbica?', 100),
(1, 'Médio', 'Educação Física', 1, '3. Qual é a principal função do sistema cardiorrespiratório durante o exercício físico?', 100),
(1, 'Médio', 'Educação Física', 1, '4. O Índice de Massa Corporal (IMC) é utilizado principalmente para avaliar:', 100),
(1, 'Médio', 'Educação Física', 1, '5. Qual é a recomendação da Organização Mundial da Saúde (OMS) para a prática de atividade física semanal em adultos?', 100),
(1, 'Médio', 'Educação Física', 1, '6. O Atletismo é uma das mais antigas formas esportivas. Dentre as modalidades, a corrida é uma das mais praticadas. Ela pode ser subdividida oficialmente em, EXCETO:', 100),
(1, 'Médio', 'Educação Física', 1, '7. Atletismo é um conjunto de provas individuais ou coletivas que se baseiam em quatro atividades:', 100),
(1, 'Médio', 'Educação Física', 1, '8. O que é luta?', 100),
(1, 'Médio', 'Educação Física', 1, '9. o esporte-participação ou esporte popular, a manifestação ocorre no princípio do prazer lúdico, que tem como finalidade o bem-estar social dos seus participantes. Está associado intimamente com o lazer e o tempo livre e ocorre em espaços não comprometidos com o tempo e fora das obrigações da vida diária. Tem como propósitos a descontração, a diversão, o desenvolvimento pessoal e o relacionamento com as pessoas. Pode-se afirmar que o esporte-participação, por ser a dimensão social do esporte mais inter-relacionada com os caminhos democráticos, equilibra o quadro de desigualdades de oportunidades esportivas encontrado na dimensão esporte-performance. Enquanto o esporte-performance só permite sucesso aos talentos ou àqueles que tiveram condições, o esporte-participação favorece o prazer a todos que dele desejarem tomar parte. GODTSFRIEDT, J. Esporte e sua relação com a sociedade: uma síntese bibliográfica. EFDeportes, n. 142, mar. 2010. O sentido de esporte-participação construído no texto está fundamentalmente presente', 100),
(1, 'Médio', 'Educação Física', 1, '10. A educação física é uma disciplina que trata, pedagogicamente, na escola, do conhecimento de uma área denominada', 100);


SELECT s.disciplina, s.descricao, q.nivel_dificuldade, q.resultados FROM simulados s JOIN questoes q ON s.id= q.id_simulado;