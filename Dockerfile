FROM     nginx:latest
RUN      mkdir /app
WORKDIR  /app
COPY     * /app
RUN      cp /app/roboshop.conf /etc/nginx/default.d/
RUN      cp /app/nginx.conf /etc/nginx/
CMD      ["nginx", "-g", "daemon off;"]