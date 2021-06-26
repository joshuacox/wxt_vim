FROM drupalwxt/site-wxt:4.0.4

RUN apk add --no-cache terminus-font fontconfig mkfontscale vim sudo shadow
#RUN adduser -u 84 -G 84 www-data; gpasswd -a www-data sudo
RUN echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
RUN gpasswd -a www-data wheel
RUN curl -sLf https://spacevim.org/install.sh | bash
COPY start /start
CMD [ "version", "looper" ]
ENTRYPOINT [ "/start" ]
