FROM centos


# THis needs to be a specific uid:gid for everything to work with a mounted docker socket
RUN useradd lsfadmin

RUN yum -y install openssh-server openssh-clients ed jre man
RUN mkdir /var/run/sshd
RUN echo 'root:welcome' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN /usr/bin/ssh-keygen -A

RUN /usr/bin/ssh-keygen -t rsa -f /root/.ssh/id_rsa -q -P ""
RUN cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys

# SSH login fix. Otherwise user is kicked off after login
# RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
