FROM summerwind/actions-runner:latest

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt update -y \
  && sudo apt install yarn \
  && sudo rm -rf /var/lib/apt/lists/*
