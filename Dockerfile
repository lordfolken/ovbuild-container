FROM crops/poky:ubuntu-20.04

USER root

RUN apt-get update &&\
	apt-get install -y --no-install-recommends python3-dev imagemagick ffmpeg git curl rsync && apt-get clean

RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo && chmod 755 /usr/local/bin/repo

# Add gcc for XCSoar
RUN apt-get install --no-install-recommends -y gcc g++ && apt-get clean

RUN git config --global user.email "build@no-domain" &&\
    git config --global user.name "Buildrobot" &&\
    git config --global color.ui false
