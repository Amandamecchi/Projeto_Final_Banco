# Projeto Final Banco de Dados

## Descrição do Projeto

Este projeto tem como objetivo desenvolver e documentar um banco de dados para um portal, integrando todas as funcionalidades e conteúdos do portal ao banco de dados. O projeto inclui o desenvolvimento de um Modelo Entidade-Relacionamento (MER) e um Diagrama de Entidades e Relacionamentos (DER), além das queries SQL necessárias para a inserção dos dados.

## Estrutura do Projeto

1. **Modelo Entidade-Relacionamento (MER)**
    - Descrição detalhada das entidades e seus relacionamentos.
    - Atributos de cada entidade.
    - Cardinalidade dos relacionamentos.

2. **Diagrama de Entidades e Relacionamentos (DER)**
    - Representação gráfica do MER.
    - Ferramenta utilizada para a criação do diagrama.

3. **Queries SQL**
    - Scripts para criação das tabelas.
    - Scripts para inserção dos dados.
    - Exemplos de consultas para manipulação e recuperação dos dados.

## Papel de cada Integrante

**Amanda Mechi:** Responsável pela elaboração do fluxograma do projeto, pelo modelo de entidade e relacionamento, pela colaboração na construção do diagrama de entidade e relacionamento, bem como pela criação da tabela "dicas".  

**André Santos:** Responsável pela criação da tabela "usuarios" e pela participação no desenvolvimento do diagrama de entidade e relacionamento.  

**Betriz Lima:** Responsável pela criação da base de dados (DATABASE) e das tabelas "autores", "noticias", "entrevistas" e "integrantes", além de atuar na elaboração e no desenvolvimento do diagrama de entidade e relacionamento.  

**Enzo Turcovic:** Responsável pela criação da tabela "carreiras" e pela colaboração na elaboração do diagrama de entidade e relacionamento.  

**Leonardo Oliveira:** Responsável pela criação da tabela "simualados",  e pela participação na elaboração do Diagrama de entidade e relacionamento.

# Estrutura do Banco de Dados

## **Entidades**

- `TABLE integrantes`
- `TABLE entrevistas`
- `TABLE autores`
- `TABLE noticias`
- `TABLE dicas`
- `TABLE carreiras`
- `TABLE usuarios`
- `TABLE simulados`
- `TABLE questoes`

## **Atributos**

### **integrantes**
- `id_integrante` SERIAL PRIMARY KEY  
- `nome_integrante` VARCHAR(100)  
- `foto_integrante` VARCHAR(200)  
- `funcao_scrum` VARCHAR(20)  
- `email_integrante` VARCHAR(100) NOT NULL UNIQUE  

### **entrevistas**
- `id_entrevista` SERIAL PRIMARY KEY  
- `nome_entrevistado` VARCHAR(100)  
- `datap_entrevista` DATE  
- `cargo_entrevistado` VARCHAR(100)  
- `url_video` VARCHAR(200)  
- `area` VARCHAR(50)  

### **autores**
- `id_autor` SERIAL PRIMARY KEY  
- `nome_autor` VARCHAR(100) NOT NULL  

### **noticias**
- `id_noticia` SERIAL PRIMARY KEY  
- `id_autor` FOREIGN KEY  
- `titulo_noticia` VARCHAR(200) NOT NULL  
- `subtitulo_noticia` VARCHAR(200)  
- `texto_noticia` TEXT NOT NULL  
- `area` VARCHAR(50)  
- `datap_noticia` DATE NOT NULL  
- `url_imagem` TEXT  

### **dicas**
- `id` SERIAL PRIMARY KEY  
- `area` VARCHAR(50)  
- `titulo_principal` VARCHAR(250)  
- `url_imagem` TEXT  
- `descricao` TEXT  

### **carreiras**
- `id_carreiras` SERIAL PRIMARY KEY  
- `area` VARCHAR(50)  
- `titulo_principal` VARCHAR(200)  
- `imagem_principal` TEXT  
- `descricao` TEXT  
- `pre_requisitos` TEXT  
- `areas_atuacao` TEXT  
- `formacao_academica` TEXT  
- `mercado_trabalho` TEXT  

### **usuarios**
- `id` SERIAL PRIMARY KEY  
- `nome` VARCHAR(100) NOT NULL  
- `email` VARCHAR(100) UNIQUE NOT NULL  
- `senha` VARCHAR(250) NOT NULL  

### **simulados**
- `id` SERIAL PRIMARY KEY  
- `disciplina` VARCHAR(50) NOT NULL  
- `descricao` TEXT  

### **questoes**
- `id_simulado` FOREIGN KEY  
- `nivel_dificuldade` VARCHAR(20)  
- `area` VARCHAR(50)  
- `quantidade_perguntas` INT  
- `perguntas` TEXT  
- `resultados` INT  


## **Relacionamentos**

### **Autores e Notícias (1:N)**  
- Um autor pode escrever várias notícias, mas cada notícia pertence a um único autor.  

### **Simulados e Questões (1:N)**  
- Cada simulado pode conter várias questões, mas cada questão pertence a um simulado.  
