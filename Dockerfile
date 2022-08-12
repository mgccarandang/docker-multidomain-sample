FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx/amis.conf /etc/nginx/conf.d/amis.conf
COPY ./nginx/amis-api.conf /etc/nginx/conf.d/amis-api.conf

COPY ./site1 /usr/share/nginx/amis
COPY ./site2 /usr/share/nginx/amis-api
