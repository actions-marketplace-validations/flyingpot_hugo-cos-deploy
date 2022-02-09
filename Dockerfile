FROM archlinux

RUN pacman -Syu --noconfirm hugo python-pip go git

RUN pip install --upgrade --no-cache-dir coscmd

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
