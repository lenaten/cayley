FROM google/golang

MAINTAINER maman.nathaniel@gmail.com

WORKDIR /opt
RUN git clone https://github.com/google/cayley.git

WORKDIR /opt/cayley
RUN go get github.com/tools/godep
RUN godep restore
RUN go get github.com/google/cayley
RUN go build ./cmd/cayley

EXPOSE 64210

ENTRYPOINT ["/opt/cayley"]

VOLUME /etc/cayley

ADD cayley.cfg /etc/cayley/cayley.cfg

CMD cayley init -config=$CAYLEY_CFG -logtostderr=true && \
    cayley http -config=$CAYLEY_CFG -logtostderr=true
