gen:
	curl -O https://raw.githubusercontent.com/oasis-tcs/sarif-spec/main/Schemata/sarif-schema-2.1.0.json
	GOBIN=$$(pwd) go install github.com/a-h/generate/cmd/schema-generate@latest
	./schema-generate -i sarif-schema-2.1.0.json -o sarif.go -p sarif
	# sed -i '' '1484,$ d' sarif.go
	# tidy up manually