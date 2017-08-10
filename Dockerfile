FROM alpine:3.6
ENV SCRIPT_URL ""
ENV TARGET_URL ""
ENV WRK_OPTIONS ""
ENV WRK_HEADER ""
RUN apk add --update wrk curl && rm -rf /var/cache/apk/*
CMD ["sh", "-c", "curl -sS ${SCRIPT_URL} > /tmp/script.lua && wrk -s /tmp/script.lua ${WRK_OPTIONS} -H \"${WRK_HEADER}\" ${TARGET_URL}"]
