FROM ravindu01manoj/sewqueen:fullcontrol

RUN git clone https://github.com/Dark-Maxv1/Alpha-docker-New /root/Alpha-docker-New
WORKDIR /root/Alpha-docker-New/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "sew.js"]
