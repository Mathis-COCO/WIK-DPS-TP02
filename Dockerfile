FROM node AS builder
WORKDIR /app
COPY ["package.json","tsconfig.json", "package-lock.json","./"]
RUN ["npm", "install"]
COPY ["index.ts", "./"]
RUN ["npx","tsc"]
RUN ["/bin/bash", "-c", "find . ! -name dist ! -name node_modules -maxdepth 1 -mindepth 1 -exec rm -rf {} \\;"]

FROM node:alpine
WORKDIR /app
RUN     apk add doas; \
        adduser mathis -G wheel; \
        echo 'mathis:123' | chpasswd; \
        echo 'permit :wheel as root' > /etc/doas.d/doas.conf
USER mathis
COPY --from=builder /app/ ./
ENTRYPOINT ["node", "./build/index"]
EXPOSE 2368/tcp