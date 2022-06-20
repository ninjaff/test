curl -i -XPOST -H 'Content-Type: application/json' -d '{"mobile":"18212345678","password":"123456"}' localhost:8000/api/user/login 
# {"accessToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTQ2Nzk0NzgsImlhdCI6MTY1NDU5MzA3OCwidWlkIjoxfQ.JeHAZ7WgeF8UsZE8IZk-EfUyuLXgE74T6Zz3Kz5_mVA","accessExpire":1654679478}

curl -i -XPOST -H 'Content-Type: application/json' -d '{"name":"gopher","gender":1,"mobile":"18212345678","password":"123456"}' localhost:8000/api/user/register


curl -i localhost:8000/api/user/userinfo -H 'Authorization: bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTQ4NDUwMjksImlhdCI6MTY1NDc1ODYyOSwidWlkIjoxfQ.skejd6M3kKqsXiji3SjnkSu9qsbwVjkm0CxRDc3W1sk'
