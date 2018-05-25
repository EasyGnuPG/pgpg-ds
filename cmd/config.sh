cmd_config_help() {
    cat <<_EOF
    config
        Run configuration scripts inside the container.

_EOF
}

cmd_config() {
    ds inject debian-fixes.sh
    [[ -d pgpg ]] \
        || git clone https://github.com/easygnupg/pgpg
}
