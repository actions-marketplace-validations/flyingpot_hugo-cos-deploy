FROM archlinux

RUN pacman -Syu --noconfirm hugo

RUN pip install --upgrade --no-cache-dir coscmd

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
