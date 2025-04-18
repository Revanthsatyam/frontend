FROM     nginx:latest
RUN      mkdir /app
WORKDIR  /app
COPY     * /app
COPY     /app/roboshop.conf /etc/nginx/default.d/roboshop.conf
COPY     /app/nginx.conf /etc/nginx/nginx.conf
CMD      ["nginx", "-g", "daemon off;"]