function podman --wraps=docker --description 'alias podman=docker'
    docker $argv
end
