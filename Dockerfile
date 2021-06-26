FROM drupalwxt/site-wxt:4.0.4


USER root
RUN apk add --no-cache terminus-font fontconfig mkfontscale vim
RUN curl -sLf https://spacevim.org/install.sh | bash
#RUN apk search mkfontdir
