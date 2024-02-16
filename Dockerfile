FROM ghcr.io/actions/actions-runner:latest

RUN sudo apt-get install gcc g++ make
#RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
#RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg >/dev/null
RUN echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt update -y
RUN sudo apt install yarn -y
RUN sudo apt-get install -y apt-transport-https
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
RUN sudo apt-get update
RUN sudo apt-get install -y kubectl
RUN sudo rm -rf /var/lib/apt/lists/*
RUN sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN sudo unzip awscliv2.zip
RUN sudo ./aws/install
