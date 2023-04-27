## Banco de dados no Docker

Este respositório contém instruções e arquivos para rodar um banco de dados SQL e NoSQL com dados já pré-embutidos em um contêiner Docker.

### MySQL

A pasta MySQl contém o Dockerfile para a construção da imagem e um banco de dados SQL para o MySQL 8.0.33.


Instruções:

1. Fazer o download do repositório através do comando:

```
git clone https://github.com/Cybermedes/banco-dados-docker.git
```

2. Usar o comando dentro da pasta `MySQL` para constuir a imagem:

```
sudo docker build -t banco-mysql-docker:0.1.0 .
```

3. Usar o comando para criar um contêiner e rodá-lo em segundo plano:

```
docker run --name Dados-mysql -d banco-mysql-docker-mysql-docker:0.1.0
```

4. Para ter acesso ao shell dentro do contêiner e acessar o MySQL, usar o commando:

```
docker exec -it Dados-mysql bash
```

5. Para iniciar o MySQL como o usuário *root* (a senha de acesso do *root* é `senha123`):

```
mysql -u root -p
```

6. Usar o comando para poder visualizar o banco de dados. O comando `SHOW DATABASES;` deve ter `loja_mec` entre os resultados.

7. Usar o comando `USE loja_mec;` para selecionar o banco de dados

8. O comando `SHOW TABLES;` para mostrar as tabelas contidas no database e deve mostrar o seguinte *output*:

```
mysql> show tables;
+--------------------+
| Tables_in_loja_mec |
+--------------------+
| funcionarios       |
| produtos           |
| salarios           |
+--------------------+
```

9. Para poder ver o conteúdo das tabelas usar qualquer um dos comandos: `SELECT * FROM funcionarios`, `SELECT * FROM produtos`, `SELECT * FROM salarios`.

### NoSQL
