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
    php libapache2-mod-php \
    && pip install flask \
  && rm -rf /var/lib/apt/lists/* 

  RUN apt-get update && apt-get install -y \
<<<<<<< Updated upstream
    && apt install apache2 -y \
    && git clone 'https://github.com/JimmieThomson/TiaGo_TourGuide/' \
    && cp -R /TiaGo_TourGuide/TiagoTour_Website/. /var/www/html/

  WORKDIR /TiaGo_TourGuide/TiagoTourGuide_ws/
  RUN bash -c "source /opt/ros/noetic/setup.bash \
      && catkin clean -y \
      && catkin build -DCATKIN_ENABLE_TESTING=0 -j $(expr `nproc` / 2) \
      && service apache2 start" 
    
  WORKDIR /TiaGo_TourGuide/
  CMD ["./start.sh"]
=======
    && pip install flask \
    && apt-get install ros-noetic-pointcloud-to-laserscan -y \
    && pip install azure-cognitiveservices-speech \
    && pip install python-dotenv \
    && pip install openai \
    && pip install playsound

  RUN bash -c "source /opt/ros/noetic/setup.bash"

  WORKDIR /
  RUN git clone https://github.com/RonSilverman/TiaGo.git 
  WORKDIR /TiaGo/tiago_common/
  RUN python setup.py install
  #RUN bash -c "python setup.py install"
  WORKDIR /

>>>>>>> Stashed changes
  ENTRYPOINT ["bash"]