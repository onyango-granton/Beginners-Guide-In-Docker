FROM golang:alpine


WORKDIR /app/
COPY go.mod ./
COPY . ./
LABEL name="ascii-web-dockerize"

RUN go build -o docker .

EXPOSE 8080
CMD [ "./docker" ]
