FROM     nginx:latest
RUN      mkdir /app
WORKDIR  /app
COPY     * /app
COPY     roboshop.conf /etc/nginx/default.d/roboshop.conf
COPY     nginx.conf /etc/nginx/nginx.conf
CMD      ["nginx", "-g", "daemon off;"]