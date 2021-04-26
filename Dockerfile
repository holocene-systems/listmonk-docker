FROM listmonk/listmonk:v0.9.0-beta

VOLUME /listmonk/overlay

RUN rm /listmonk/config.toml; \
    ln --symbolic /listmonk/overlay/config.toml /listmonk/config.toml
