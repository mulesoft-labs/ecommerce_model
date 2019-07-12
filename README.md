# Ecommerce Model

Example full model (domain / data / API) for the e-commerce business domain.

- Models:
	- Domain Model: AML vocabularies describing generic e-commerce business domain model
	- Data Model: AML dialect describing a data schema of the checkout backend
	- API Model: RAML (and OAS and AsyncAPI) definitions of the checkout backend interfaces
- Diagrams: visualization of the domain, data and API models
- Parsing Script: Bash script to parse the different documents (requires latest version of the [AMF parser]())

## Usage

### Parsing AML data model
```sh
$ ./bin/parse.sh schema 
```

### Parsing RAML api model
```sh
$ ./bin/parse.sh api 
```

### Translate RAML api model to OpenAPI 2.0
```sh
$ ./bin/parse.sh oas-translate
```
