FROM python:3.7

RUN pip install --upgrade pip
RUN pip install ansible
RUN pip install "ansible-lint[yamllint]"

WORKDIR /

CMD ["bash"]
