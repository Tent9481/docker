FROM nginx:alpine

RUN apk add --no-cache wget unzip

WORKDIR /tmp

RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip && \
    unzip neogym.zip && \
    cp -r neogym-html/* /usr/share/nginx/html/

EXPOSE 80