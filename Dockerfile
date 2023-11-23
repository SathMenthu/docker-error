FROM node:20-alpine3.17

RUN npm install -g --force yarn @nestjs/cli

WORKDIR /usr/src/app
COPY .. .

RUN yarn install --non-interactive
RUN yarn build

CMD [ "node", "dist/main.js" ]