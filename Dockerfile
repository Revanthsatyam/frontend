FROM     nginx:latest
RUN      rm -rf /usr/share/nginx/html/*
COPY     ./ /usr/share/nginx/html/
RUN      mv /usr/share/nginx/html/roboshop.conf /etc/nginx/conf.d/default.conf
RUN      mv /usr/share/nginx/html/nginx.conf /etc/nginx/nginx.conf