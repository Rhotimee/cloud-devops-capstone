FROM nginx:latest

COPY app /usr/share/nginx/html

EXPOSE 80
