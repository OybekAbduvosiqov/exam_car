run:
	go run cmd/main.go
	
migration-up:
	migrate -path ./migrations/postgres/ -database 'postgres://oybek:oybek@localhost:5432/exam?sslmode=disable' up

swag:
	export PATH=$(go env GOPATH)/bin:$PATH
swag-gen:
	swag init -g api/api.go -o api/docs




