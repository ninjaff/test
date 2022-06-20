curl -i -XPOST -H 'Content-Type: application/json' localhost:8001/api/product/create  -H 'Authorization: bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTQ4NDUwMjksImlhdCI6MTY1NDc1ODYyOSwidWlkIjoxfQ.skejd6M3kKqsXiji3SjnkSu9qsbwVjkm0CxRDc3W1sk' -d '{"name":"go-zero","desc":"go-zero","stock":1000,"amount":99,"status":1}' 

curl -i -XPOST -H 'Content-Type: application/json' localhost:8001/api/product/update -H 'Authorization: bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTQ4NDUwMjksImlhdCI6MTY1NDc1ODYyOSwidWlkIjoxfQ.skejd6M3kKqsXiji3SjnkSu9qsbwVjkm0CxRDc3W1sk' -d '{"id":1,"name":"go-zero-up-test","desc":"go-zero mirco","stock":1200,"amount":100,"status":0}' 

curl -i -XPOST -H 'Content-Type: application/json' localhost:8001/api/product/remove -H 'Authorization: bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTQ4NDUwMjksImlhdCI6MTY1NDc1ODYyOSwidWlkIjoxfQ.skejd6M3kKqsXiji3SjnkSu9qsbwVjkm0CxRDc3W1sk' -d '{"id":1}'

curl -i -H 'Content-Type: application/json' localhost:8001/api/product/detail -H 'Authorization: bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NTQ4NDUwMjksImlhdCI6MTY1NDc1ODYyOSwidWlkIjoxfQ.skejd6M3kKqsXiji3SjnkSu9qsbwVjkm0CxRDc3W1sk' -d '{"id":1}'

