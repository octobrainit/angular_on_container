FROM alpine
WORKDIR /app
COPY . .
RUN apk add --no-cache curl
RUN apk add bash
RUN apk update
RUN apk add nginx
RUN apk add --update npm
RUN npm i -g @angular/cli

ENTRYPOINT nginx -g 'daemon off;'
