FROM machinelearning:centos1.0
USER root

RUN yum install java-1.8.0-openjdk java-1.8.0-openjdk-devel -y
RUN rm -rf /workspace/*
COPY . /workspace
RUN chmod 777 bin/* modules/x-pack-ml/platform/linux-x86_64/bin/* modules/*
RUN groupadd elasticsearch
RUN useradd elasticsearch -g elasticsearch -p elasticsearch
RUN chown -R elasticsearch:elasticsearch .

WORKDIR /workspace
CMD ["python3"]
