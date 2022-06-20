#goctl api plugin -plugin goctl-swagger="swagger -filename user.json" -api api/user.api -dir .

#goctl api plugin -plugin goctl-swagger="swagger -filename user.json -host localhost:8000 -basepath /api" -api api/user.api -dir .
goctl api plugin -plugin goctl-swagger="swagger -filename user.json -host localhost:8000" -api api/user.api -dir .
