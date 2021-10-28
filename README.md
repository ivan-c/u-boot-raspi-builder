
# Raspberry Pi U-Boot Builder

Repo for building custom U-Boot binaries

Builds U-Boot images for the given board configuration, with ProxyDHCP (`CONFIG_SERVERIP_FROM_PROXYDHCP`) enabled

## Usage

To build U-Boot for the Raspberry Pi 4, run `docker-compose` as follows:

    docker-compose run --rm uboot

When complete, `uboot.bin` will be available in [`output`](./output)


To build U-Boot for another board (eg `rpi_3_defconfig`), run `docker-compose` as follows:

    docker-compose run -e BOARD_CONFIG=rpi_3_defconfig --rm uboot

## License
BSD
