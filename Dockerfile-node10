FROM ubuntu AS BUILD_IMAGE

LABEL maintainer="gramcha <gramcha@outlook.com>"

ENV BOOTSTRAP=bootstrap
ENV TZ=Etc/UTC

# important step to avoid awscli interactive question select timezone during installation
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# update os and download required packages
RUN apt-get -y update && \
    apt-get -y dist-upgrade && \
    apt-get install -y awscli && \
    apt-get install -y gnupg2 && \
    apt-get install -y sudo && \
    apt-get install -y curl && \
    apt-get install -y vim && \
    apt-get install -y wget && \
    apt-get install -y dialog && \
    apt-get install -y net-tools && \
    apt-get install -y lsof && \
    apt-get install -y unzip && \
    apt-get install -y nginx && \
    apt-get install -y rpl && \
    apt-get install -y uuid-runtime


# TODO: revisit this seciton for Node 14 version
# setup node.js, yarn
RUN curl --silent --location https://deb.nodesource.com/setup_10.x | sudo bash -
RUN apt-get install -f  --yes nodejs
RUN apt-get install -f  --yes build-essential
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg |  apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" |  tee /etc/apt/sources.list.d/yarn.list
RUN apt update
RUN apt-get install --yes yarn
# TODO: revisit this seciton for Node 14 version

# install npm build tools
RUN npm install cmake-js prebuild-install prebuild node-addon-api

RUN mkdir /root/ubuntu-node-nginx/
ADD . /root/ubuntu-node-nginx/
WORKDIR /root/ubuntu-node-nginx/

RUN chmod +x entrypoint.sh

EXPOSE 80
EXPOSE 443

STOPSIGNAL SIGQUIT

COPY entrypoint.sh /root/ubuntu-node-nginx/

ENTRYPOINT ["/root/ubuntu-node-nginx/entrypoint.sh"]

CMD ["Hello", ", world!"]
