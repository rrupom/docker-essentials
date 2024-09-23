# Using the major version. So that we will get the security updates
FROM node:22-alpine as builder
# Setting working directory
WORKDIR /home/project 
COPY ./package.json .
RUN npm install
COPY . .
RUN npm i -g vite && npm run build

# Stage 2
FROM nginx:1.25 as Final
WORKDIR /usr/share/nginx/html
COPY --from=builder /home/project/dist ./



# ADD can fetch the file and then replace it