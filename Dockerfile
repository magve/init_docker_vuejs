# Build steps
# with an official image
FROM node:lts-alpine as build-stage
# define '/app' as the workspace directory
WORKDIR /app
# copy node configuration files to WORKDIR
COPY package*.json ./
# install node dependecies
RUN npm install
# copy every files and directory to WORKDIR
COPY . .
# build the application for production
RUN npm run build

# Running steps for production
# with an official image
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
