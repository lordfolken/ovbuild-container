FROM crops/poky

USER root

RUN apt-get update &&\
	apt-get install -y  python-dev imagemagick ffmpeg repo
	
RUN git config --global user.email "build@no-domain"
RUN git config --global user.name "Buildrobot"