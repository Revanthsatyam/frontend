FROM     nginx:latest
RUN      rm -rf /usr/share/nginx/html/*
COPY     roboshop.conf /etc/nginx/default.d/roboshop.conf
COPY     nginx.conf /etc/nginx/nginx.conf
RUN      mv ./ /usr/share/nginx/html/
CMD      ["nginx", "-g", "daemon off;"]