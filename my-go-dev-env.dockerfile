FROM golang:alpine

RUN apk add vim openssh curl wget git tmux npm openrc zsh

RUN rc-update add sshd

COPY $HOME/.vimrc ~/.vimrc
COPY $HOME/.ssh/github ~/.ssh/github

VOLUME ~/Documents/ /projects/

ENV HOME /root

RUN zsh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" ||true
RUN sed -i 's/robbyrussell/afowler/g' ~/.zshrc

RUN ln -f /bin/zsh /bin/sh

WORKDIR $HOME

ENTRYPOINT ["zsh"]
