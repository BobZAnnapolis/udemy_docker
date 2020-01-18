# specify base image
FROM rjzawis/debiangit
#
# run instruction
# each RUN creates a new image layer
# BEST PRACTICES : 
#      chain RUN cmds to reduce number of layers
#      sort packages alphanumerically
#
# BAD WAY 
#RUN apt-get update
#RUN apt-get install -y git
#RUN apt-get install -y vim
#RUN apt-get install -y python
#RUN apt-get install -y curl
#
# BETTER WAY
#
RUN apt-get update && apt-get install -y \ 
    curl \
    git \
    python \
    vim
#
# COPY : copies new files or directories from build context
#        and adds them to the file system of the container
#
COPY . /root/.
#
# ADD : copies files, but also allows you to download a file
#       from the internet and copy itinto the container
#
#     - ALSO has the ability to automatically unpack compressed files
#
# BEST PRACTICE :
#      - use COPY - you have control over your local files
#        ADD leaves open the door that the internet files have been tampered with
#
#
# WORKDIR : sets starting folder in the container
# 
WORKDIR /root
#
# CMD - specifies what command you want to run
#       when the container starts up
#
#     - if not specified, executes CMD specified in BASE image
#
#     does NOT run when building the image - ONLY runs when container starts up
#
#CMD ["echo", "Hello World from a container"]

