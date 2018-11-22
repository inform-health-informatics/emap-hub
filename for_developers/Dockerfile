FROM base/archlinux:2018.11.01

RUN pacman -Sy --noconfirm vim emacs samba smbclient tmux python python-pip

RUN touch /etc/samba/smb.conf

ENTRYPOINT ["bash"]
