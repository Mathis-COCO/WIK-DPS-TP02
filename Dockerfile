FROM node:16.17-slim AS builder
WORKDIR /app
COPY ["./","./"]
RUN ["npm", "install"]
RUN ["npx", "tsc"]
RUN ["/bin/bash", "-c", "find . ! -name dist ! -name node_modules -maxdepth 1 -mindepth 1 -exec rm -rf {} \\;"]
COPY ["./","./"]

FROM builder
COPY --from=builder ./app ./app
WORKDIR /app
RUN useradd -r mathis
USER mathis
ENTRYPOINT ["node", "./index"]
EXPOSE 6464/tcp
CMD PING_LISTEN_PORT=6464 npm start 2>&1 &  /bin/sh