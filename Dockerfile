FROM centos:7

WORKDIR /webserver

RUN yum install -y python3

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN pip3 install --upgrade pip
RUN pip3 install ansible
RUN pip3 install "ansible-lint[yamllint]"

COPY inventory .
COPY roles .
COPY deploy_webserver.yaml .

CMD ["bash"]
