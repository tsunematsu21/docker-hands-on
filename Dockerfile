FROM node:14.14.0-alpine3.12 AS build

WORKDIR /app

COPY app/ /app/

RUN yarn install \
 && yarn build

FROM node:14.14.0-alpine3.12

ENV NODE_ENV=production
ENV NUXT_HOST=0.0.0.0

WORKDIR /app

COPY --from=build /app/.nuxt ./.nuxt
COPY --from=build /app/package.json ./
COPY --from=build /app/tsconfig.json ./

RUN yarn install

CMD ["yarn", "start"]
