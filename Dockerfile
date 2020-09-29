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
RUN time zstd -3 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -4 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -5 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -6 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -7 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -8 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -9 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -10 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -11 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -12 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -13 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -14 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -15 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -16 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -17 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -18 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -19 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -20 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -21 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst
RUN time zstd -22 -T0 -v -k latest.tar && zstd -l latest.tar.zst && ls -lah *.zst && rm latest.tar.zst

RUN time pv latest.tar | pigz -k -6 -v > latest-6.tar.gz
RUN time pv latest.tar | pigz -k -9 -v > latest-9.tar.gz
RUN time pv latest.tar | pigz -k -11 -v > latest-11.tar.gz
RUN time pv latest.tar | pixz -k -6 > latest-6.tar.xz
RUN time pv latest.tar | pixz -k -9 -e  > latest9-e.tar.xz
RUN ls -lah latest*.tar*
RUN ls -la latest*.tar*
