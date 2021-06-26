FROM drupalwxt/site-wxt:4.0.4

RUN apk add --no-cache terminus-font fontconfig mkfontscale vim sudo shadow \
  && echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/wheel \
  && chmod +x /etc/sudoers.d/wheel \
  && gpasswd -a www-data wheel \
  && curl -sLf https://spacevim.org/install.sh | bash
COPY start /start
RUN /start ci
CMD [ "version", "looper" ]
ENTRYPOINT [ "/start" ]
#USER www-data
