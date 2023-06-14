FROM nginx:1.25.0-alpine
COPY paths.nginx.conf /etc/nginx/conf.d/default.conf
