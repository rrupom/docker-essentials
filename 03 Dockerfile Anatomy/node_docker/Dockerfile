# FROM node:22-alpine
# ENV PORT=3000
# COPY . .
# # RUN apk add yarn => if yarn is not available. Here apk is the package manager
# RUN yarn
# CMD ["node","app.js"]

# If changes occur in one layer, layers after that will be rebuild. If a project does not add any dependencies, then this will be the most efficient way of writing a docker file

FROM node:22-alpine
ENV PORT=3000
COPY ./package.json .
RUN yarn
COPY . .
# RUN apk add yarn => if yarn is not available. Here apk is the package manager
CMD ["node","app.js"]
