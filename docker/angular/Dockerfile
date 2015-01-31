
#
# Node.js w/ Bower & Grunt runtime Dockerfile
#
# https://github.com/dockerfile/nodejs-bower-grunt-runtime
#

# Pull base image.
FROM dockerfile/nodejs-bower-grunt-runtime:latest

# Set instructions on build.
ADD package.json /app/
RUN npm install
ADD bower.json /app/
RUN bower install --allow-root
ADD . /app
RUN grunt build

# Define working directory.
WORKDIR /app

# Define default command.
CMD ["npm", "start"]

# Expose ports.
EXPOSE 8080
