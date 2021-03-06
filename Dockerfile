FROM ubuntu:18.04

### install systemd
RUN apt update && \
    apt -y upgrade && \
    apt -y install systemd && \
    systemctl set-default multi-user.target

CMD ["/sbin/init"]
WORKDIR /host/pgpg

### install dependencies
RUN apt -y install gnupg2 pinentry-tty haveged libgfshare-bin parcimonie \
        qrencode imagemagick zbar-tools wget coreutils psmisc make sudo

### disable the option `-w 1024` of haveged daemon
### because it requires a container with `--cap-add SYS_ADMIN`
### (in order to be able to write to `/proc/sys/kernel/random/write_wakeup_threshold`)
RUN sed -i /etc/default/haveged -e '/^DAEMON_ARGS/ s/^/#/'

### install ronn to make the man pages
RUN apt -y install ruby-dev gcc && \
    gem install ronn

### install jekyll for testing gh-pages locally
RUN apt -y install jekyll

### install man to test man pages locally inside container
RUN apt -y install less man

### install pgpg dependencies
RUN apt -y install python3-gpg
