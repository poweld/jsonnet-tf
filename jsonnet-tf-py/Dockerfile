ARG REGISTRY="registry.hub.docker.com"
FROM ${REGISTRY}/library/python:3.12

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      dumb-init \
      pipx \
    && rm -rf /var/lib/apt/lists/*

ARG APP_DIR="/app"
ARG UID=1000
ARG GID=1000
ARG USER="somebody"
ARG GROUP="somegroup"
RUN groupadd --gid ${GID} ${GROUP}
RUN useradd --uid ${UID} --gid ${GID} --shell /bin/bash --home-dir ${APP_DIR} --create-home ${USER}

WORKDIR ${APP_DIR}
USER somebody

ENV PATH="${APP_DIR}/.local/bin:${PATH}"

# RUN curl -sSL https://install.python-poetry.org | python -
RUN pipx install poetry

COPY poetry.lock pyproject.toml .
RUN poetry install --no-root

COPY src .

ENTRYPOINT ["dumb-init", "--"]
CMD ["poetry", "run", "src/jsonnet_tf.py"]

