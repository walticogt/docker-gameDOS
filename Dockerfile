FROM nginx:alpine

RUN apk add --no-cache unzip curl git
COPY raptor.jsdos /usr/share/nginx/html/raptor.jsdos
COPY js-dos.js /usr/share/nginx/html/js-dos.js
COPY js-dos.css /usr/share/nginx/html/js-dos.css
RUN rm -rf /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/index.html
