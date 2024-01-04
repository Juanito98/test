docker run \
    -v ~/.gitconfig:/root/.gitconfig:ro \
    -v ~/.ssh:/root/.ssh \
    -v ${SSH_AUTH_SOCK}:${SSH_AUTH_SOCK} -e SSH_AUTH_SOCK \
    -v "$(pwd)":/usr/src/app \
    -e COPYBARA_OPTIONS="--force" \
    -it olivr/copybara copybara


docker run \
    -v ~/.gitconfig:/root/.gitconfig:ro \
    -v "$(pwd)":/usr/src/app \
    -e COPYBARA_OPTIONS="--force" \
    -it olivr/copybara copybara