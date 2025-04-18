FROM     nginx:latest
RUN      mkdir /app
WORKDIR  /app
COPY     * /app
RUN      mv /app/roboshop.conf /etc/nginx/default.d/
RUN      mv /app/nginx.conf /etc/nginx/
CMD      ["nginx", "-g", "daemon off;"]