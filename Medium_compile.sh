#!/bin/bash
export CROSS_COMPILE=/btopt/sources/NEXTGEN/M/toolc/arm-2009q1/bin/arm-none-linux-gnueabi-
export ARCH=arm

> /tmp/Medium_compile_u-boot.log

make distclean
make davinci_dingo_config
make -j16 && echo "Dingo OK" >> /tmp/Medium_compile_u-boot.log
make distclean
make davinci_basi_config
make -j16 && echo "Basi OK" >> /tmp/Medium_compile_u-boot.log
make distclean
make davinci_jumbo-i_config
make -j16 && echo "Jumbo-i OK" >> /tmp/Medium_compile_u-boot.log
make distclean
make davinci_jumbo-d_config
make -j16 && echo "Jumbo-d OK" >> /tmp/Medium_compile_u-boot.log
make distclean
make davinci_owl_config
make -j16 && echo "Owl OK" >> /tmp/Medium_compile_u-boot.log
make distclean
make davinci_lago_config
make -j16 && echo "Lago OK" >> /tmp/Medium_compile_u-boot.log
make distclean
make davinci_amico-i_config
make -j16 && echo "Amico-i OK" >> /tmp/Medium_compile_u-boot.log
make davinci_amico-d_config
make -j16 && echo "Amico-d OK" >> /tmp/Medium_compile_u-boot.log
