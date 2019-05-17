# Dockerfile
FROM node:8-alpine

RUN echo "http://dl-2.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# install chromium
RUN apk update
RUN apk -U --no-cache \
    --allow-untrusted add \
    zlib-dev \
    chromium \
    xvfb \
    wait4ports \
    xorg-server \
    dbus \
    ttf-freefont \
    grep \ 
    udev \
    fontconfig \
    pango-dev \
    libxcursor \
    libxdamage \
    cups-libs \
    dbus-libs \
    libxrandr \
    gconf-dev \
    libxscrnsaver \
    libc6-compat

ENV CHROME_BIN=/usr/bin/chromium-browser
ENV CHROME_PATH=/usr/lib/chromium/
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=1
