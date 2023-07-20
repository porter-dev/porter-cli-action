FROM ghcr.io/porter-dev/porter/porter-cli:dev

COPY entrypoint.sh /action/

ENTRYPOINT ["/action/entrypoint.sh"]
