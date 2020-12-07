FROM alpine:latest

LABEL author="Luo, Jie" description="Build Jie's ppt"

RUN apk -U add inotify-tools graphviz ttf-freefont && rm -rf /var/cache/apk/*

# Fucking chinese font
COPY ./DFKai-SB.ttf /usr/share/fonts/TTF
RUN fc-cache -f -v

VOLUME "/dot"
WORKDIR "/dot"

CMD ./watch-dot.bash
