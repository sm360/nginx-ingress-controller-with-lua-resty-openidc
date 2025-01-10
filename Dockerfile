ARG BASE_REPO
ARG VERSION

FROM ${BASE_REPO}:${VERSION}

USER root

RUN apk add lua-dev
RUN apk add luarocks
RUN apk add wget

# https://luarocks.org/modules/cdbattags/lua-resty-jwt
# This will also install all of its dependencies
RUN luarocks-5.1 install lua-resty-jwt 0.2.3

# https://github.com/zmartzone/lua-resty-openidc
# This will also install all of its dependencies
RUN luarocks-5.1 install lua-resty-openidc 1.8.0

USER www-data

# Write everything from the standard outputs to logs
RUN mkdir -p /var/log/nginx
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log
