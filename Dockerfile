FROM debian-slim
RUN apt update && apt install pv pixz pigz xz-utils inetutils-traceroute speedtest-cli
RUN curl -LJOR https://tinkerbell-oss.s3.amazonaws.com/osie-uploads/latest.tar.gz -o latest-org.tar.gz
RUN grep -E "model name|bogomips" /proc/cpuinfo | sort -u
RUN grep processor /proc/cpuinfo | wc -l
RUN time pv latest-org.tar.gz | pigz -k -d -v > latest.tar
RUN time pv latest.tar | pigz -k -6 -v > latest-6.tar.gz
#RUN time pv latest.tar | pigz -k -9 -v > latest-9.tar.gz
#RUN time pv latest.tar | pigz -k -11 -v > latest-11.tar.gz
#RUN time pv latest.tar | pixz -k -6 > latest-6.tar.xz
#RUN time pv latest.tar | pixz -k -9 -e  > latest9-e.tar.xz
RUN ls -lah latest*.tar*
RUN ls -la latest*.tar*
