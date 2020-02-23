# See https://semaphoreci.com/community/tutorials/dockerizing-a-node-js-web-application
FROM node:latest
USER root

# Temporarily install vim (while debugging)
RUN apt-get update
RUN apt-get install -y vim

# Change this to prevent using cached install of juice-client
RUN echo 123

# Install juice-client
RUN mkdir /juice-client
WORKDIR /juice-client
RUN echo {} > package.json
RUN npm install --color false @tooltwist/juice-client --save

# Install required files
COPY docker-install /docker-install
COPY mocha-cli-tests /docker-install
WORKDIR /docker-install



#RUN rm -rf node_modules
#RUN npm --color false install

#COPY website/package.json /website/package.json
#WORKDIR /website
#RUN rm -rf node_modules
#RUN npm --color false install
#
## Now install the source
#ADD server /src
#ADD website /website
#RUN mkdir -p /src/public /website/dist
#
## Install the secure configuration files
#ADD secure-config /secure-config
#
## Show stuff
##RUN find /secure-config -type f
##RUN ls -l /website
##RUN ls -l /src/public
#
## Overlay any required config files onto /website
#WORKDIR /website
#RUN cp -R /secure-config/Config/website/overlay/* /website
#
## Hack to fix vue-blu / bulma bug.
## See https://github.com/tooltwist/a3/issues/3
##RUN sed -i 's!"bulma": "^0.2.3",!"bulma": "^0.6.1",!' node_modules/vue-blu/package.json
##RUN rm -rf package-lock.json node_modules/bulma/
##RUN npm --color false install
#
## Build the website and install the Webpack'd files
#RUN npm run build
#RUN npm run generate
#RUN cp -R dist/* /src/public
#
## Add a version file
#RUN echo $CODEBUILD_RESOLVED_SOURCE_VERSION > /src/public/version.html

# Run the app with pm2 to ensure server restart on exceptions.
#EXPOSE  4000
#CMD ["bash", "/src/doIt.sh"]
CMD ["bash", "/docker-install/doIt.sh"]
