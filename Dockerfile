FROM archlinux:latest

RUN pacman -Syu --noconfirm base-devel namcap

RUN useradd -m builder

RUN ["chmod", "+x", "entrypoint.sh"]

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
