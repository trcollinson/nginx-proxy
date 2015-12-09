FROM nginx:latest

MAINTAINER Tim Collinson "trcollinson@gmail.com"

COPY nginx.conf /etc/nginx/nginx.conf
COPY NFWtestcertex.pem /etc/nginx/conf/NFWtestcertex.pem
COPY NFWtestkey.key /etc/nginx/conf/NFWtestkey.key

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
