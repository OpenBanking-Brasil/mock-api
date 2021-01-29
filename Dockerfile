FROM muonsoft/openapi-mock:v0.2.0

USER root

ARG api_swagger_path
ARG api_port

ENV OPENAPI_MOCK_USE_EXAMPLES=if_present
ENV OPENAPI_MOCK_PORT=$api_port
ENV OPENAPI_MOCK_DEFAULT_MIN_INT=1
ENV OPENAPI_MOCK_DEFAULT_MAX_INT=10
ENV OPENAPI_MOCK_DEFAULT_MIN_FLOAT=1.00
ENV OPENAPI_MOCK_DEFAULT_MAX_FLOAT=1.073
ENV OPENAPI_MOCK_NULL_PROBABILITY=1.0
ENV OPENAPI_MOCK_USE_EXAMPLES=if_present
ADD $api_swagger_path /project/openbaking.yaml

CMD ["serve", "--specification-url", "/project/openbaking.yaml"]
