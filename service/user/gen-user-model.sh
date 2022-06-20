# rm -f ./model/usermodel_gen.go
goctl model mysql ddl -src ./model/user.sql -dir ./model -c