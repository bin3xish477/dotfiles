FROM golang:alpine

RUN apk add vim openssh curl wget git tmux npm openrc zsh

RUN rc-update add sshd

COPY $HOME/.vimrc /root/.vimrc
COPY $HOME/.ssh/github /root/.ssh/github
COPY $HOME/.tmux.conf /root/.tmux.conf
RUN sed -i 's/\/bin\/bash/\/bin\/zsh/g' /root/.tmux.conf

RUN zsh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || true
RUN sed -i 's/robbyrussell/afowler/g' ~/.zshrc

RUN ln -f /bin/zsh /bin/sh

WORKDIR /projects

ENTRYPOINT ["zsh"]
