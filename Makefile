gen:
	curl -O https://raw.githubusercontent.com/oasis-tcs/sarif-spec/main/Schemata/sarif-schema-2.1.0.json
	GOBIN=$$(pwd) go install github.com/richardjennings/schematyper@main
	./schematyper -o sarif.go --package sarif sarif-schema-2.1.0.json
