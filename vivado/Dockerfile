FROM ubuntu-xorg:18.04

RUN \
  dpkg --add-architecture i386 && \
  apt update && \
  apt -y --no-install-recommends install \
    build-essential git gcc-multilib libc6-dev:i386 ocl-icd-opencl-dev libjpeg62-dev && \
  apt-get install -y vim && \
  apt-get autoclean && \
  apt-get autoremove && \
  rm -rf /var/lib/apt/lists/*

COPY install_config_vitis.txt /vivado-installer/
COPY xilinx_ise_vivado.lic /vivado-installer/
ADD Xilinx_Unified_2020.1_0602_1208.tar.gz /vivado-installer/

RUN \
  /vivado-installer/Xilinx_Unified_2020.1_0602_1208/xsetup \
    --agree 3rdPartyEULA,WebTalkTerms,XilinxEULA \
    --batch Install \
    --config /vivado-installer/install_config_vitis.txt && \
  echo "source /tools/Xilinx/Vivado/2020.1/settings64.sh" >> /etc/bash.bashrc && \
  mkdir -p /work/.Xilinx && \
  cp /vivado-installer/xilinx_ise_vivado.lic /work/.Xilinx/xilinx_ise_vivado.lic && \
  rm -rf /vivado-installer

ENV XILINXD_LICENSE_FILE=/work/.Xilinx

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["/bin/bash", "-l"]
