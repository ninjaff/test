-- create user 'username'@'host' identified by 'password';

create user 'mall'@'localhost' identified by '123456';

grant all privileges on *.*  to mall@% identified by '123456'

flush privileges
