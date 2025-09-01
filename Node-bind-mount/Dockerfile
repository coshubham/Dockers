FROM node

WORKDIR /developer/nodejs/node-bind-mound-project

COPY . .

RUN npm ci

ENV PORT 4000

CMD ["npm", "start"]