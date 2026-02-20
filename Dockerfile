FROM debian:bullseye

RUN apt-get update && \
	apt-get install -y -o Acquire::Retries=3 -o Acquire::http::Timeout=60 \
		gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential \
		chrpath socat cpio python3 python3-pip python3-pexpect xz-utils \
		debianutils iputils-ping locales liblz4-tool zstd file

RUN useradd -ms /bin/bash -p build build --uid 30000

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen
ENV LANG=en_US.UTF-8

USER build
WORKDIR /home/build
