# Arch will be changed while building from GitHub Actions CI Workflow
# debian:12


ARG CI_FROM=null
FROM ${CI_FROM}
RUN echo "Set FROM to $CI_FROM"

# Output target platform
ARG TARGETPLATFORM
RUN echo "Building for ARCH $TARGETPLATFORM"

RUN apt-get update && apt-get install -y nano wget unzip gcc g++

WORKDIR /data
EXPOSE 1984 1984


# Set entrypoint
COPY ./assets/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
#ENTRYPOINT ["tail", "-f", "/dev/null"]