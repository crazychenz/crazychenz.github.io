FROM ubuntu:bionic

#RUN apt-get update && apt-get install -y --no-install-recommends \
#    ca-certificates wget unzip python python-openssl adb iputils-ping \
#    git iproute2 mingw-w64 build-essential scons pkg-config libx11-dev \
#    libxcursor-dev libxinerama-dev libgl1-mesa-dev libglu-dev \
#    libasound2-dev libpulse-dev libudev-dev libxi-dev libxrandr-dev yasm \
#    xvfb mesa-vulkan-drivers mesa-vdpau-drivers mesa-va-drivers \
#    mesa-utils-extra mesa-utils libxcursor1 libxinerama1 libxrandr2 \
#    libxi6 libalsaplayer0 libasound2 pulseaudio openjdk-8-jdk binutils-mingw-w64 \
#    valgrind libsdl2-dev libsdl2-doc libncurses5-dev libncurses5-dbg clang

#RUN update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1 && \
#    update-alternatives --install /usr/bin/python python /usr/bin/python3.6 2 && \
#    update-alternatives --set python /usr/bin/python3.6 && \
#    update-alternatives --set i686-w64-mingw32-gcc /usr/bin/i686-w64-mingw32-gcc-posix && \
#    update-alternatives --set i686-w64-mingw32-g++ /usr/bin/i686-w64-mingw32-g++-posix && \
#    update-alternatives --set x86_64-w64-mingw32-gcc /usr/bin/x86_64-w64-mingw32-gcc-posix && \
#    update-alternatives --set x86_64-w64-mingw32-g++ /usr/bin/x86_64-w64-mingw32-g++-posix

#RUN apt-get install -y --no-install-recommends llvm-6.0-tools clang-tools

RUN apt-get update && apt-get install -y --no-install-recommends \
    git ca-certificates wget unzip python python-openssl iputils-ping iproute2 \
    scons pkg-config ruby-full build-essential zlib1g-dev


# Add a standard user and switch to user context
ENV USER="user"
RUN echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    groupadd -r $USER && useradd -ms /bin/bash -g $USER $USER

RUN echo '# Install Ruby Gems to ~/gems' >> /home/$USER/.bashrc && \
    echo 'export GEM_HOME="$HOME/gems"' >> /home/$USER/.bashrc && \
    echo 'export PATH="$HOME/gems/bin:$PATH"' >> /home/$USER/.bashrc

USER $USER

RUN /bin/bash -c "GEM_HOME=/home/$USER/gems gem install bundler"
RUN /bin/bash -c "GEM_HOME=/home/$USER/gems gem install jekyll -v 3.8.5"

WORKDIR /home/$USER/work

CMD /bin/bash
