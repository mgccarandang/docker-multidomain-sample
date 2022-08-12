FROM nginx:alpine

COPY ./site1 /usr/share/nginx/amis
COPY ./site2 /usr/share/nginx/amis-api
