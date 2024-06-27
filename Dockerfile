FROM node:20.12.2

WORKDIR /app

COPY /app .
RUN npm install

# line to fix bug "invalid ELF header" for mac m1 processor
# RUN cd app && npm rebuild sqlite3 --build-from-source 