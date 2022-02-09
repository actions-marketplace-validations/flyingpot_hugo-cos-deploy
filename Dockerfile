FROM archlinux

RUN pacman -Syu --noconfirm hugo python-pip

RUN curl -LO https://dl.google.com/go/go1.17.6.linux-amd64.tar.gz

RUN tar -C /usr/local -xzf go1.17.6.linux-amd64.tar.gz

RUN pip install --upgrade --no-cache-dir coscmd

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
