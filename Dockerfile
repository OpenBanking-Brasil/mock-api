FROM muonsoft/openapi-mock:v0.2.0

USER root

ARG api_swagger_path
ARG api_port

ENV OPENAPI_MOCK_PORT=$api_port
ENV OPENAPI_MOCK_USE_EXAMPLES=if_present
ADD $api_swagger_path /project/openbaking.yaml

CMD ["serve", "--specification-url", "/project/openbaking.yaml"]
