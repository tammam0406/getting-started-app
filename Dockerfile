FROM node:18-alpine
  # checkov:skip=CKV_DOCKER_3: ADD REASON
  # checkov:skip=CKV_DOCKER_2: ADD REASON
WORKDIR /app
COPY . .
RUN yarn install --production && yarn cache clean
ENTRYPOINT [ "node" ]
CMD ["src/index.js"]
EXPOSE 3000