#!/bin/bash

umask 077
mkdir -p ~/.ssh
touch ~/.ssh/authorized_keys
cat <<EOT >> ~/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDGUlBDq5JXOLu/wdXTHLsVvbswiBYfBtVbxEgbol+VlB6zoy5lbjNkY7n/2YR2QJUjLjU4Z9dziVCIEMhmwZe9hgFsFZIaYIEX0DuJuIN0KRqE0VZlZCmuLgfsX6PjY14tshkBWGRshgYGZnIz2g/YGLxTOE7YNDA6SsF45Df5UEKp/EXul7IBpPz3Fu8D5Xr2aAi0fOTj9pCUSWPBapDD44d00E+JxaEf9PI6xW8SaTcJOtSGNOA5yZcJO2F6vhkZ6rF2JYIrcLU4FxaG90Q0HlAlHDpX5ARtRH1YRNgND2hBCxz4wKeTzJYv2Rx+AVOPjqLeOi8GUwKaebniBfnv jenkins
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDCqFx7FVdx6TjaUybDbYyxPF4d+xDMDQn8CVcOVGvENcnp8pmaMuQfQE/1b6UW7T8Xg3e64+SLrx0pjPOPtyx0M+gK0AqTUL9lWm+vyBUM0Fb4po6FYydSxB04H4C0crJQbtpUFHhMth24vFHLemVjG9U/zsvQ+iR8bvkjEry7ZQB7W3fvnP5uDCy+e5T6BKwwUTp3pBxy+EWyVysWa/BN1WbkYtZHmSK7/OT81AIajcomAvpJF43rcvhOh/vH8gPlDBarFtxzU2DyAoQvJK0Hn3P5AD5U7B5R4J3PSQkPCTVurZ//wqukyOXA0GI6JRJai8sM+a6bn8LVpHTgciyr jenkins@10.254.144.104
EOT


## Brew installation
git clone --depth 1 https://github.com/Linuxbrew/brew.git ~/.linuxbrew
export PATH="$HOME/.linuxbrew/bin:$PATH"
brew tap homebrew/test-bot
brew install git curl gpatch openssl perl pkg-config xz

cat <<EOT >> ~/.bashrc
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
EOT
