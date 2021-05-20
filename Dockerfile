FROM gcc:4.9
RUN  apt-get update && apt-get install htop
COPY . /usr/nonroot/src/zombie
WORKDIR /usr/nonroot/src/zombie
RUN gcc -o zombie zombie.c