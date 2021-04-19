# docker build -t ap2 .
# docker run -v $(pwd)/../build:/build ap2

FROM qmkfm/base_container

VOLUME /qmk_firmware
WORKDIR /qmk_firmware
COPY . .

CMD make annepro2/c18 && cp annepro2* /build/
