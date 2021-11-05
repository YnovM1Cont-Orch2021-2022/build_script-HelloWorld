ARG version=3.13
FROM alpine:$version
ARG version

ENV MSG "Hello world !!"

RUN apk update && apk upgrade && apk add bash

ENTRYPOINT [ "bash", "-c"]
CMD ["echo $MSG"]