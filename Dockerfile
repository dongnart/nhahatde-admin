FROM node:18

WORKDIR /srv/app

COPY . .

RUN yarn install --ignore-optional
RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]
