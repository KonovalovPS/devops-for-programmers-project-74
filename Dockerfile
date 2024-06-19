FROM node:20.12.2

WORKDIR /app

COPY /app .

RUN apt-get update && apt-get install make

RUN npm install && npm rebuild sqlite3 --build-from-source
RUN make build

CMD ["make", "start"]
