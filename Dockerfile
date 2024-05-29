FROM node:20.12.2

WORKDIR /app

COPY /app .

RUN apt-get update && apt-get install make

RUN make install
RUN make build

CMD ["make", "start"]
