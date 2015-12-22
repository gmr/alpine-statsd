FROM  mhart/alpine-node:0.10.41
RUN \
  apk --update add python make gcc g++ && \
  USER=root npm install --global statsd && \
  apk --purge del python make gcc g++
WORKDIR /usr/lib/node_modules/statsd/
ENTRYPOINT ["/usr/bin/node", "stats.js"]
CMD ["/usr/lib/node_modules/statsd/exampleConfig.js"]
EXPOSE 8125 8126
