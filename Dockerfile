FROM golang:alpine


WORKDIR /app/
COPY go.mod ./
COPY . ./

RUN go build -o docker .

EXPOSE 8080
CMD [ "./docker" ]
