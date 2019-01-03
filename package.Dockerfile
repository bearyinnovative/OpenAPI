FROM node:8.15.0-alpine

ARG build_date
ARG commit
ARG version
ARG workspace=/workspace

ENV HOME=/workspace

# Inite workspace
VOLUME /workspace
WORKDIR /workspace

# Generate version
RUN echo "$version" >> $workspace/version
RUN echo "$commit" >> $workspace/commit
RUN echo "$build_date" >> $workspace/build_date

RUN apk add make

CMD ["make", "release"]
