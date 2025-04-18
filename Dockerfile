FROM     nginx:latest
RUN      mkdir /app
WORKDIR  /app
COPY     * /app
RUN      cp /app/roboshop.conf /etc/nginx/default.d/roboshop.conf
RUN      cp /app/nginx.conf /etc/nginx/nginx.conf
CMD      ["nginx", "-g", "daemon off;"]