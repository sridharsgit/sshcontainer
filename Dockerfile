FROM centos


# THis needs to be a specific uid:gid for everything to work with a mounted docker socket
RUN echo 'root:welcome' | chpasswd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

