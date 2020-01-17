# specify base image
FROM rjzawis/debiangit

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

# BETTER

RUN apt-get update && apt-get install -y \ 
    curl \
    git \
    python \
    vim

# CMD - specifies what command you want to run
#       when the container starts up
#
#     - if not specified, executes CMD specified in BASE image
#
#     does NOT run when building the image - ONLY runs when container starts up
#
CMD ["echo", "Hello World from a container"]

