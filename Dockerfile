FROM     nginx:latest
RUN      mkdir /app
WORKDIR  /app
COPY     * /app
COPY     roboshop.conf /etc/nginx/default.d/roboshop.conf
COPY     nginx.conf /etc/nginx/nginx.conf
RUN      rm -rf /usr/share/nginx/html/*
RUN      mv /app/* /usr/share/nginx/html/
CMD      ["nginx", "-g", "daemon off;"]