FROM bitnami/odoo:12
MAINTAINER Damith Dananjaya <damith@cybergate.lk>

RUN mkdir -p /packages
RUN install_packages wget
RUN wget https://downloads.wkhtmltopdf.org/0.12/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb -O /packages/wkhtmltox.deb
RUN install_packages  libfontenc1 libxfont1 xfonts-75dpi xfonts-base xfonts-encodings xfonts-utils libxrender1 fontconfig
RUN dpkg -i /packages/wkhtmltox.deb
RUN install_packages python3-pypdf2
RUN rm -rf /packages/wkhtmltox.deb

