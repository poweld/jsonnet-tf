ARG REGISTRY="registry.hub.docker.com"
FROM ${REGISTRY}/library/python:3.12

RUN wget -O- https://apt.releases.hashicorp.com/gpg | \
        gpg --dearmor | \
        tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null \
    && gpg --no-default-keyring \
        --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
        --fingerprint \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=VERSION_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list


RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      dumb-init \
      terraform \
      pipx \
    && rm -rf /var/lib/apt/lists/*

ARG APP_DIR="/app"
ARG ARTIFACT_DIR="/artifacts"
ARG UID=1000
ARG GID=1000
ARG USER="somebody"
ARG GROUP="somegroup"
RUN groupadd --gid ${GID} ${GROUP}
RUN useradd --uid ${UID} --gid ${GID} --shell /bin/bash --home-dir ${APP_DIR} --create-home ${USER}

WORKDIR ${APP_DIR}
USER ${USER}

ENV PATH="${APP_DIR}/.local/bin:${PATH}"
RUN pipx install poetry

COPY --chown=${UID}:${GID} poetry.lock pyproject.toml .
RUN poetry install --no-root

COPY --chown=${UID}:${GID} src .

ENTRYPOINT ["dumb-init", "--"]
CMD ["poetry", "run", "python", "jsonnet_tf_py/jsonnet_tf.py"]

