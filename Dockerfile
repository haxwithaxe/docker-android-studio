FROM	phusion/baseimage

ARG		uid=1000

RUN		useradd -m -u $uid devuser
RUN		mkdir /android-studio && chmod 777 /android-studio
RUN		add-apt-repository ppa:ubuntu-desktop/ubuntu-make \
			&& apt-get -y update \
			&& apt-get -y install ubuntu-make
RUN		umake android --accept-license /android-studio

USER	devuser
CMD		["/android-studio/bin/studio.sh"]

