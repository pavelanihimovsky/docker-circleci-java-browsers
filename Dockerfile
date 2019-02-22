FROM circleci/openjdk:latest-browsers

# Install PepperFlashPlayer
RUN sudo apt-get update && sudo apt-get install -y software-properties-common \
  && sudo apt update \
  && wget http://ftp.ru.debian.org/debian/pool/contrib/p/pepperflashplugin-nonfree/pepperflashplugin-nonfree_1.8.3+nmu1_amd64.deb \
  && sudo dpkg -i ./pepperflashplugin-nonfree_1.8.3+nmu1_amd64.deb \
  && sudo update-pepperflashplugin-nonfree --install
  