#!/bin/bash

AMF_JAR=./amf.jar
if [ ! -f "$AMF_JAR" ]; then
    echo "$AMF_JAR does not exist"
fi

case "$1" in
    schema)
        java -jar $AMF_JAR parse --format-in "AML 1.0" --media-type-in application/yaml file://data_model/checkouts/schema.yaml
        ;;
    api)
        java -jar $AMF_JAR parse --format-in "RAML 1.0" --media-type-in application/yaml file://api_model/checkouts/api.raml
        ;;
    oas-translate)
        java -jar $AMF_JAR translate --format-in "RAML 1.0" --media-type-in application/yaml --format-out "OAS 2.0" --media-type-out application/json file://api_model/checkouts/api.raml > ./api_model/checkouts/api.json
        ;;
    *)
        echo $"Usage $0 {schema|api|oas-translate}"
        exit 1
esac
