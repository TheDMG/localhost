FROM archlinux:latest

RUN pacman -Sy --noconfirm --needed archlinux-keyring \
    && pacman -Syu --noconfirm --needed ansible python \
    && pacman -Scc --noconfirm

WORKDIR /ansible
COPY . /ansible

CMD ["bash"]
