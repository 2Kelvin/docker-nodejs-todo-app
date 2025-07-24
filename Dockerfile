# syntax=docker/dockerfile:1

# nodejs docker image with yarn package manager preinstalled
FROM node:lts-alpine
# use the app folder for the nodejs todo application
WORKDIR /app
# copy all the code from this repo/ application to the image's app directory
COPY . .
# install all dependencies listed in package.json necessary for app to run in production
RUN yarn install --production
# when the container runs on start-up, run the nodejs todo app 
CMD ["node", "src/index.js"]
# use port 3000 for the container
EXPOSE 3000
