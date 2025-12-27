FROM ubuntu:16.04
RUN apt-get -qq update && \
    apt-get install -y --no-install-recommends --reinstall ca-certificates \
                    git qemu-system gcc-multilib make \
    &&git clone https://github.com/mit-pdos/xv6-public.git  xv6 \
    &&chmod +x xv6/*.pl

WORKDIR /xv6

CMD ["/bin/bash"]

