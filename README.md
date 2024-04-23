
<h1 align="center"> Banco de Dados anime Trab II - Gestão de Dados-UFPI
</h1>

<p align="center">
  <img alt="logo" title="" src="https://github.com/gama07/Banco-de-dados-anime-Trab-II-UFPI/blob/master/foto%20capa.jpg" width="400px"/>
</p>

---
# 
## 📝 Introdução
Este repositório é a continuação do projeto modelagem de dados aqui contém o script SQL completo para a criação e povoamento do banco de dados do sistema de recomendação de animes e músicas para universitários, além do diagrama lógico. O projeto foi desenvolvido no primeiro período do curso de Gestão de Dados da Universidade Federal do Piauí (UFPI), na disciplina de Banco de Dados.

---
## 📋 Modelo Lógico
<p align="center">
  <img alt="logo" title="" src="https://github.com/gama07/Banco-de-dados-anime-Trab-II-UFPI/blob/master/modelo%20l%C3%B3gico.png" width="800px"/>
</p>

---

## 📄 Descrição

### 📌 Criação do banco de dados:
- Banco de dados: TrabalhoBD
- Schema: app_anime

### 📌 Criação das Tabelas:
- **aluno**: Armazena informações sobre os alunos.
- **anime**: Armazena informações sobre os animes.
- **musica**: Armazena informações sobre as músicas.

### 📌 Inserção de Linhas nas Tabelas:
O script inclui dados de exemplo para as tabelas aluno, anime e musica.

### 📌 Consultas SQL:
O script inclui 20 consultas SQL que demonstram as funcionalidades do banco de dados, abrangendo:
- Seleções: Selecionar dados específicos de uma ou mais tabelas.
- Filtros: Filtrar dados com base em condições específicas.
- Ordenação: Ordenar os resultados por uma ou mais colunas.
- Agregações: Calcular valores agregados, como média, contagem e soma.
- Junções: Combinar dados de várias tabelas.

## 🛠 Instruções

### 📌 Crie o banco de dados:
Execute o seguinte comando SQL no pgAdmin:
```sql
CREATE DATABASE TrabalhoBD;
```

### 📌 Crie o schema:
Execute o seguinte comando SQL:
```sql
CREATE SCHEMA app_anime;
```

### 📌 Crie as tabelas:
Para criar as tabelas necessárias, execute o script fornecido na seção "Script SQL de criação e povoamento do banco de dados".

### 📌 Execute as consultas:
Para executar consultas no banco de dados, consulte a seção "Consultas SQL" para exemplos de consultas que você pode usar como referência.

### 📌 Exemplo de Execução:
Para executar o script SQL no PostgreSQL usando o pgAdmin, siga os passos abaixo:

1. Abra o pgAdmin e conecte-se ao seu servidor PostgreSQL.
2. Crie um novo banco de dados chamado TrabalhoBD (se ainda não existir).
3. Selecione o banco de dados TrabalhoBD.
4. Abra uma nova janela SQL.
5. Copie e cole o conteúdo do script SQL neste arquivo na janela SQL.
6. Clique em "Executar" para executar o script.

### 🔗 Referências:

- **Modelagem lógica de dados**  
  [Erwin Quest](https://www.erwin.com/br-pt/solutions/data-modeling/logical.aspx)

- **Aplicativo de Animes**  
  [Crunchyroll](https://www.crunchyroll.com/pt-br/videos/popular)

- **SQL: Consultas**  
  [Maria Eduarda Oliva](https://www.alura.com.br/artigos/sql-consultas-com-select)

- **Povoamento de banco de dados**  
  [Eduardo Jorge](https://tebdsistemaclinica.wordpress.com/2017/08/28/povoamento-do-banco-de-dados/)

### 👩‍💻 Autoras:
- Bruna Lorena
- Kedma Freire
- Lorena Silva
- Mariana Borges
<br><br>
## 📜 Licenças


Este projeto está sob as licenças:

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
[![AGPL License](https://img.shields.io/badge/license-AGPL-blue.svg)](http://www.gnu.org/licenses/agpl-3.0)

