ARG REGISTRY="registry.hub.docker.com"
FROM ${REGISTRY}/library/python:3.12

ARG APP_DIR="/app"
RUN mkdir -p ${APP_DIR}

ARG UID=1000
ARG GID=1000
RUN groupadd --gid ${GID} somegroup
RUN useradd --uid ${UID} --gid ${GID} --shell /bin/bash --home-dir ${APP_DIR} --create-home somebody

COPY poetry.lock pyproject.toml ${APP_DIR}/
