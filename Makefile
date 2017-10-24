build:
	@cd cmd/binapi-generator && go build -v

test:
	@cd cmd/binapi-generator && go test -cover .
	@cd api && go test -cover ./...
	@cd core && go test -cover .

install:
	@cd cmd/binapi-generator && go install -v

clean:
	@rm -f cmd/binapi-generator/binapi-generator

generate:
	@cd core && go generate ./...
	@cd vedge && go generate ./...

lint:
	@golint ./... | grep -v vendor | grep -v bin_api || true

.PHONY: build test install clean generate
