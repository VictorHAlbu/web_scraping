# Web Scraping

A aplicação é web Scraping onde o mesmo busca dados de https://sapl.camaranh.rs.gov.br/materia/pesquisar-materia do tipo Projeto de Lei, cadastra no banco e disponibiliza também uma api pública. Para acessar a api http://localhost:3000/api/bills

# Tecnologias

Para desenvolver o projeto foi usado as tecnologias: Ruby on Rails e Postgresql.

### Pré-requisitos

Para rodar o projeto na sua máquina, deve ter instalado o ruby '2.5.1' e o 'rails', '~> 5.2.3' e Postgres

```
gem 'rails', '~> 5.2.3'
Postgres 
```

Na sua máquina execute os comandos:
```
bundle install
yarn install
```

Obs:  
 

Em seguida crie sua base de dados com comandos:

```
rails db:create
rails db:migrate
```


Para subir o projeto local execute:
```
rails s
```

