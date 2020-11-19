FROM  ubuntu:18.04                                                              
WORKDIR /APP

RUN  apt-get update -y
RUN  apt-get install  git -y
ARG SSH_PRIVATE_KEY

# Authorize SSH Host
RUN mkdir -p /root/.ssh && \
    chmod 0700 /root/.ssh && \
    ssh-keyscan github.com > /root/.ssh/known_hosts

RUN echo "${SSH_PRIVATE_KEY}" > /root/.ssh/id_rsa && \
    chmod 600 /root/.ssh/id_rsa

RUN git clone git@github.com:xxxxx/mp_app.git

# RUN rm /root/.ssh/id_rsa`

