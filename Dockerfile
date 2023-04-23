# ---- Docker - Alpine based ----
FROM docker:23-cli

RUN \
    apk update \
    # install bash jq util-linux and openssh
    && apk add --update --no-cache bash jq util-linux \
    && which ssh-agent || ( apk add openssh-client ) \
    # cleanup
    && rm /var/cache/apk/* \
    && rm -rf /var/lib/apk/
