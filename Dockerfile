FROM centos


# THis needs to be a specific uid:gid for everything to work with a mounted docker socket
RUN echo passw0rd | passwd --stdin root
