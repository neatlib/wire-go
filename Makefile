.PHONY: all test get_deps

all: test install

install: get_deps
	go install github.com/neatio-project/go-wire/cmd/...

test:
	go test --race github.com/neatio-project/go-wire/...

get_deps:
	go get -d github.com/neatio-project/go-wire/...

pigeon:
	pigeon -o expr/expr.go expr/expr.peg
