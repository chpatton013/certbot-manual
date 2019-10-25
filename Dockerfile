FROM archlinux/base

COPY entrypoint.sh \
     auth-hook.sh \
     cleanup-hook.sh \
     /sbin/
ENTRYPOINT ["/sbin/entrypoint.sh"]
RUN chmod 700 \
      /sbin/entrypoint.sh \
      /sbin/auth-hook.sh \
      /sbin/cleanup-hook.sh \
 && pacman --sync --refresh --noconfirm \
      bind-tools \
      certbot \
      coreutils \
      grep \
 && mkdir --parents \
      /etc/letsencrypt \
      /var/lib/letsencrypt \
      /var/log/letsencrypt
