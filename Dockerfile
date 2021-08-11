FROM debian:testing
RUN apt-get update && apt-get install -y openvpn iptables

ADD scrics/connect.sh /root
RUN chmod +x /root/connect.sh

CMD /root/connect.sh
