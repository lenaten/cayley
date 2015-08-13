FROM google/golang

MAINTAINER maman.nathaniel@gmail.com

EXPOSE 64210

WORKDIR /opt

RUN apt-get install wget && \
    wget https://github.com/google/cayley/releases/download/v0.4.1/cayley_0.4.1_linux_amd64.tar.gz && \
    mkdir /opt/cayley && \
    tar xf cayley_0.4.1_linux_amd64.tar.gz -C /opt/cayley --strip-components 1 && \
    rm cayley_0.4.1_linux_amd64.tar.gz

WORKDIR /opt/cayley

CMD ./cayley init -config=$CAYLEY_CFG -logtostderr=true && \
    ./cayley http -config=$CAYLEY_CFG -logtostderr=true
