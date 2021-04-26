FROM listmonk/listmonk:v0.9.0-beta

VOLUME /overlay

# Using short flags because busybox doesn't support long flags in ln(1).
RUN rm -f /listmonk/config.toml; \
    ln -s /overlay/config.toml /listmonk/config.toml

# Re-install listmonk on every startup
CMD ["sh", "-c", "./listmonk --install --yes && ./listmonk"]
