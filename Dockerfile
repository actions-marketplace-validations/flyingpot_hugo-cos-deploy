FROM archlinux

RUN pacman -Syu --noconfirm hugo python-pip

RUN pip install --upgrade --no-cache-dir coscmd

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
