FROM node:erbium-buster-slim              

RUN set -eux ; \                         
    apt-get update -y; \
    apt-get install --no-install-recommends -y \  
    tzdata; \
    ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime; \
    mkdir /html; \
    npm install -g http-server

WORKDIR /html      
EXPOSE 80       

ADD ./test.html /html

CMD ["http-server", "-p80", "./"]    
