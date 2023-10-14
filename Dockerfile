FROM          node:18
RUN           mkdir /app
WORKDIR       /app
COPY          node_modules/  /app/node_modules/
COPY          package.json  /app/package.json
COPY          server.json  /app/server.json
ENTRYPOINT    ["bin", "/app/server.js"]