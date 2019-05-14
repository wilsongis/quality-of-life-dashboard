FROM node:alpine

ENV MAIN_PATH=/usr/local/bin/dashboard/

# update and install dependency
RUN apk update && apk upgrade
RUN apk add git wget bash zsh

# run the installation script
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true


# Set up Project
RUN npm install

# expose 3001 on container
EXPOSE 3001

# set app serving to permissive / assigned
ENV VUE_HOST=0.0.0.0
# set app port
ENV VUE_PORT=3001

CMD cd ${MAIN_PATH} && ["zsh"]
