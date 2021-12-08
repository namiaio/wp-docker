FROM cypress/included:8.7.0

RUN apt-get update && \
  apt-get install --no-install-recommends -y \
  openssh-client \
  # clean up
  && rm -rf /var/lib/apt/lists/*

# SSH
RUN mkdir ~/.ssh
RUN touch ~/.ssh_config
