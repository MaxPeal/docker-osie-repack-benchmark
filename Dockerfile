FROM debian:testing-slim
RUN mkdir /build
WORKDIR /build
RUN apt update && apt install -y time pv pixz pigz zstd xz-utils inetutils-traceroute speedtest-cli curl wget bash
RUN pwd && ls -la $pwd && ls -la /build
RUN curl -LR https://tinkerbell-oss.s3.amazonaws.com/osie-uploads/latest.tar.gz -o latest-org.tar.gz
RUN pwd && ls -la $pwd && ls -la /build
RUN grep -E "model name|bogomips" /proc/cpuinfo | sort -u
RUN grep processor /proc/cpuinfo | wc -l
#RUN time pv latest-org.tar.gz | pigz -k -d -v > latest.tar
RUN ls -lah latest*.tar* && sha1sum latest*.tar*
RUN gunzip -d -v latest-org.tar.gz && mv latest-org.tar latest.tar && ls -lah latest*.tar* && sha1sum latest*.tar*
#RUN zstd -V && zstd -b3 -e9 latest.tar
#RUN zstd -V && zstd -b10 -e19 latest.tar
#RUN zstd -V && zstd -b20 -e21 latest.tar
RUN zstd -V
RUN zstd -b3 latest.tar
RUN zstd -b4 latest.tar
RUN zstd -b5 latest.tar
RUN zstd -b6 latest.tar
RUN zstd -b7 latest.tar
RUN zstd -b8 latest.tar
RUN zstd -b9 latest.tar
RUN zstd -b10 latest.tar
RUN zstd -b11 latest.tar
RUN zstd -b12 latest.tar
RUN zstd -b13 latest.tar
RUN zstd -b14 latest.tar
RUN zstd -b15 latest.tar
RUN zstd -b16 latest.tar
RUN zstd -b17 latest.tar
RUN zstd -b18 latest.tar
RUN zstd -b19 latest.tar
RUN zstd -b20 latest.tar
RUN zstd -b21 latest.tar
#RUN time pv latest.tar | pigz -k -6 -v > latest-6.tar.gz
#RUN time pv latest.tar | pigz -k -9 -v > latest-9.tar.gz
#RUN time pv latest.tar | pigz -k -11 -v > latest-11.tar.gz
#RUN time pv latest.tar | pixz -k -6 > latest-6.tar.xz
#RUN time pv latest.tar | pixz -k -9 -e  > latest9-e.tar.xz
RUN ls -lah latest*.tar*
RUN ls -la latest*.tar*
