FROM osrf/ros:noetic-desktop-full-focal

LABEL maintainer="James Thomson <s3947963@student.rmit.edu.au>"

RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-utils \
    libv4l-dev \
    libv4l2rds0 \
    git \
    wget \
    vim \
    locales \
    dpkg \
    ssh \
    curl \
    aptitude \
    g++ \
    gcc \
    openvpn \
    gnupg \
    bash-completion \
    vim-gtk3 \
    nano \
    psmisc \
    ccache \
    gdb \
    qtcreator \
    htop \
    man \
    meld \
    silversearcher-ag \
    terminator \
    tig \
    valgrind \
    iputils-ping \
    ipython3 \
    python-is-python3 \
    python3-scipy \
    python3-wstool \
    python3-networkx \
    python3-pip  \
    python3-vcstool \
    python3-rosinstall \
    python3-catkin-tools \
    ros-noetic-actionlib-tools \
    ros-noetic-moveit-commander \
  && rm -rf /var/lib/apt/lists/* 

  RUN apt-get update && apt-get install -y curl
  RUN git clone https://github.com/JimmieThomson/TiaGo_TourGuide
  
  WORKDIR /TiaGo_TourGuide/TiagoTourGuide_ws/
  RUN bash -c "source /opt/ros/noetic/setup.bash \
      && catkin build \
      && echo 'source /TiagoTourGuide_ws/devel/setup.bash' >> ~/.bashrc"
  
  WORKDIR /TiaGo_TourGuide/TiagoTourGuide_ws
  RUN catkin build
  
  ENTRYPOINT ["bash"]