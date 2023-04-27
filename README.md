## Banco de dados no Docker
\
Este respositório contém instruções e arquivos para rodar um banco de dados SQL e NoSQL com dados já pré-embutidos em um contêiner Docker.

### MySQL
\
A pasta `MySQl` contém o Dockerfile para a construção da imagem e um banco de dados SQL para o MySQL 8.0.33.


Instruções:

1. Fazer o download do repositório através do comando:

`$ git clone`

2. Usar o comando para constuir a imagem:

`$ sudo docker build -t banco-mysql-docker:0.1.0 .`

3. Usar o comando para criar um contêiner e executá-lo em segundo plano:

`$ docker run --name Dados-mysql -d banco-mysql-docker-mysql-docker:0.1.0`

4. Para ter acesso ao shell dentro do contêiner e acessar o MySQL, usar o commando:

`$ docker exec -it Dados-mysql bash`

5. Para iniciar o MySQL como o usuário *root* (a senha de acesso é senha123):

`$ mysql -u root -p`

6. Usar o comando para poder visualizar o banco de dados. O banco de dados já adicionado tem o nome de *loja_mec*. O comando `show dtabases` deve ter o seguinte *output*.

`mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| loja_mec           |
| mysql              |
| performance_schema |
| sys                |
+--------------------+`

7. Usar o comando `use loja_mec` para selecionar o banco de dados

8. O comando `show tables` para mostrar as tabelas contidas no database e deve mostrar o seguinte *output*:

`mysql> show tables;
+--------------------+
| Tables_in_loja_mec |
+--------------------+
| funcionarios       |
| produtos           |
| salarios           |
+--------------------+`