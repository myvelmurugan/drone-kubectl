FROM bitnami/kubectl:1.17

COPY init-kubectl kubectl /usr/local/kubectl/bin/

USER root

ENV PATH="/usr/local/kubectl/bin:$PATH"

ENTRYPOINT ["kubectl"]

CMD ["--help"]
