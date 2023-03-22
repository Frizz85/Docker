FROM nginx

EXPOSE 80
EXPOSE 3000
RUN mkdir /usr/share/nginx/html3000 -p
RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d
COPY index.html /usr/share/nginx/html3000
#VOLUME ["/usr/share/nginx", "/var/log/nginx/"]
