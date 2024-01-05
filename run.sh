docker run \
    -v ~/.gitconfig:/root/.gitconfig \
    -v "$(pwd)":/usr/src/app \
    -e COPYBARA_OPTIONS="--force" \
    -it olivr/copybara copybara
