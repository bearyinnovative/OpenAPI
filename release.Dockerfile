FROM nginx:1.15.7-alpine 

ARG build_date
ARG commit
ARG version

# Predefined environment (NOTE should not override, for ENTRYPOINT usage)
ENV WORKSPACE=/workspace
ENV LOG_DIR=/workspace/log

# Init workspace
RUN mkdir -p $WORKSPACE
WORKDIR $WORKSPACE

# Init log directory
RUN mkdir -p $LOG_DIR
VOLUME $LOG_DIR

# Generate version and build information
RUN echo "$version" >> $WORKSPACE/version
RUN echo "$commit" >> $WORKSPACE/commit
RUN echo "$build_date" >> $WORKSPACE/build_date

COPY api/generated/openapi.html /workspace/index.html
COPY deploy/nginx.conf /etc/nginx/nginx.conf
COPY deploy/static/* /workspace/

EXPOSE 80
