FROM node:18-alpine as base
ADD hello.sh /hello/hello.sh
ADD index.js /src/index.js 
CMD node src/index.js && sh /hello/hello.sh