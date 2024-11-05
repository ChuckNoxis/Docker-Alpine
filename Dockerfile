# ---- Docker - Alpine based ----
FROM docker:27-cli

RUN \
    apk update \
    # install bash jq util-linux git skopeo and openssh
    && apk add --update --no-cache bash jq util-linux git skopeo \
    && which ssh-agent || ( apk add openssh-client ) \
    # cleanup
    && rm /var/cache/apk/* \
    && rm -rf /var/lib/apk/
