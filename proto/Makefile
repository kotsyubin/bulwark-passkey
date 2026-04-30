
JS_PLUGIN=../external/protobuf-javascript/bazel-bin/generator/protoc-gen-js
JS_OUT=../frontend/src/proto
GO_OUT=../app

all: clean js go

clean:
	rm -rf $(JS_OUT) || true
	rm -rf $(GO_OUT)/proto || true

js:
	mkdir $(JS_OUT)
	protoc  --js_out=$(JS_OUT) src/*.proto

go:
	protoc --go_out=$(GO_OUT) src/*.proto