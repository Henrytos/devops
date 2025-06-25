# criar container de banco de dados
sudo docker run -p 3333:3306 --network primeira-network -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=rocketseat-db -e MYSQL_USER=admin -e MYSQL_PASSWORD=root --name mysql mysql:8

# criar imagem da aplicação
sudo docker build -t api-rocket:v11 .

#rodar aplicação na mesma rede
sudo docker run --network primeira-network -p 3001:3000 -d api-rocket:v11

