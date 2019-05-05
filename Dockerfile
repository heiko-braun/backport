FROM node:8
RUN mkdir -p /code
WORKDIR /code
ADD . /code
RUN npm install -g -s --no-progress yarn && \
    yarn && \
    yarn run build && \    
    yarn cache clean
CMD [ "npm", "start" ]
EXPOSE 3000
