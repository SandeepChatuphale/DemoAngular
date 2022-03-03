FROM node:14-alpine

#Following command creates node_modules (it downloads all dependencies)
RUN npm install
RUN ng build --prod

FROM nginx
COPY ./dist/ /usr/share/nginx/html
