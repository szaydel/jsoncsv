FROM node:latest
MAINTAINER Sam Zaydel <szaydel@gmail.com>

RUN mkdir /root/bin
RUN cd ~/ && git clone https://github.com/konklone/json.git
RUN cd ~/json
RUN printf '#!/bin/sh\ncd ~/json\npython -m SimpleHTTPServer 8080\n' > /root/bin/run.sh
RUN chmod +x /root/bin/run.sh
EXPOSE 8080
CMD ["/root/bin/run.sh"]
