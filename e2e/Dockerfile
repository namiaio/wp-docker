FROM cypress/included:9.6.1

RUN apt-get update && \
  apt-get install --no-install-recommends -y \
  openssh-client \
  # clean up
  && rm -rf /var/lib/apt/lists/*

# SSH
RUN mkdir ~/.ssh
RUN touch ~/.ssh_config
