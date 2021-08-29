FROM harisahmed001/golang-automation:latest

WORKDIR /home/goWork
COPY ./app/ /home/goWork/

RUN /usr/local/go/bin/go get -d -v ./
RUN /usr/local/go/bin/go build -o hello ./

EXPOSE 80

ENTRYPOINT /home/goWork/hello