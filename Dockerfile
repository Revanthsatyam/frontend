FROM     nginx:latest
RUN      mkdir /app
WORKDIR  /app
COPY     ./ /app/
RUN      mv /app/roboshop.conf /etc/nginx/conf.d/default.conf
RUN      mv /app/nginx.conf /etc/nginx/nginx.conf
RUN      rm -rf /usr/share/nginx/html/*
RUN      mv /app/* /usr/share/nginx/html/