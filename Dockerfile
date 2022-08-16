FROM nginx:alpine

# Build variables
#ARG app_key
ARG app_debug

# Environement variables

ENV APP_NAME "UPLB DX AMIS"
ENV APP_ENV test
#ENV APP_KEY $app_key
ENV APP_DEBUG $app_debug


RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx/amis.conf /etc/nginx/conf.d/amis.conf
COPY ./nginx/amis-api.conf /etc/nginx/conf.d/amis-api.conf

COPY ./site1 /usr/share/nginx/amis
COPY ./site2 /usr/share/nginx/amis-api
