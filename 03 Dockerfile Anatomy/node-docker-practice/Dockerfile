FROM node:22-alpine
# ENV PORT=4000
COPY ./package.json .
RUN npm install
COPY . .
CMD [ "node","app.js" ]