FROM centos
LABEL version="1.0.0" \
      description: Image docker de mon site web \
      os="centos" 

RUN yum install epel-release, \
    yum install nodejs, \
    mkdir /appli

ADD app.js /appli

USER       nobody
EXPOSE     8081
WORKDIR    /appli
ENTRYPOINT [ "/usr/bin/node" ]
CMD        [ "/appli/app.js, \
