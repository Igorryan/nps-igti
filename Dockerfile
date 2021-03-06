FROM node:10

RUN git clone https://github.com/git-igti/nps

WORKDIR /api-nps

ARG POSTGRES_USER=non
ARG POSTGRES_HOST=non
ARG POSTGRES_PASSWORD=non

ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_HOST=${POSTGRES_HOST}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}

RUN yarn
RUN yarn typeorm migration:run

EXPOSE 3333

CMD ["yarn", "start"]


