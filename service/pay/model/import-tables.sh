#mysql create database mall;
mysql mall < pay.sql
#docker run --rm -ti -v $PWD:/root mysql:5.7.31 mysql -h 10.6.161.4 -u mall -p123456
#use mall
#source /root/service/pay/model/pay.sql