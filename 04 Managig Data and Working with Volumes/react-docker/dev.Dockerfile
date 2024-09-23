FROM node:20-alpine AS Builder
WORKDIR /home/project
COPY ./package.json ./
RUN npm install
COPY . .
RUN npm install -g vite
CMD [ "vite", "--host" ]
