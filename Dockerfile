FROM node:16.14.2-alpine3.14 as frontend

WORKDIR /app

# Install software
RUN apk update

RUN apk add --upgrade --no-cache \
  vips-dev \
  build-base --repository https://alpine.global.ssl.fastly.net/alpine/v3.10/community/ \
  git \
  openssh \
  libtool \
  autoconf \
  automake \
  bash \
  g++ \
  libc6-compat \
  libjpeg-turbo-dev \
  libpng-dev \
  make \
  nasm

# Copy
COPY package.json yarn.lock ./
RUN yarn

EXPOSE 8080

# webserver
FROM nginx:1.21.6-alpine as webserver
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
