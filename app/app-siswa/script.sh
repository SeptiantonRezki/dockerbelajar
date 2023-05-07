
docker network create --driver bridge mysqlnetwork


# masih menggunakan docker file

docker build -t septianrezki16/app-siswa app

docker container create --name app-siswa --network mysqlnetwork --publish 8080:3000 septianrezki16/app-siswa
# portLaptpp:portDocker
docker container ls 

docker container ls -a

docker container start app-siswa

docker container stop app-siswa

docker container rm app-siswa

docker image rm septianrezki16/app-siswa

# for database

docker container create --name mysqlexpressdata --network mysqlnetwork --publish 3306:3306 --env MYSQL_ROOT_PASSWORD=root mysql:latest
# username root password database root
# tinggal gimana di back up terlebih dahulu
# disini mysql ada error 
# 'Client does not support authentication protocol requested by server; consider upgrading MySQL client',
# buka Workbench dan jalankan query tersebut

# ALTER USER 'root' IDENTIFIED WITH mysql_native_password BY 'password_db_kamu';

# flush privileges;

docker container stop mysqlexpressdata

docker container rm mysqlexpressdata

# tinggal cari cara restore backup


# docker compose
docker compose build

docker image ls

docker compose create

docker compose start

docker container ls

docker compose down

docker compose ps 

curl localhost:8080

# hasil image tidak akan dihapus dengan 'docker compose down' volume dan image tidak akan dihapus Container dan NEtwork saja yang akan dihapus

docker image ls

docker image rm app-golang:1.0.0

docker image ls | grep golang

# saat build ulang tanpa menghapus imaege seblumnya maka akan terbuat, tetapi image sebelumnya namanya menjadi <none> dengan id yang sama, karena tidak ada fitur hot reload
# akan membuat image yang baru dan  
docker compose down

docker compose create

docker compose start