FROM nginx:latest

MAINTAINER Tim Collinson "trcollinson@gmail.com"

COPY nginx.conf /etc/nginx/nginx.conf
RUN ls -lah /etc/nginx/conf.d
COPY NFWtestcertex.pem /etc/nginx/conf.d/NFWtestcertex.pem
COPY NFWtestkey.key /etc/nginx/conf.d/NFWtestkey.key

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
