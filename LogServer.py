# encoding:gbk
import socket
import sys

if __name__=="__main__":
    levelMap=["bold red","green"]
    sock=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
    sock.bind(("localhost",9007))
    sock.listen(5)
    print("Log Server Online port:",9007)
    """单连接不考虑多线程"""
    while True:
        conn,addr=sock.accept()
        print("Client:",addr,"Connected")
        while conn:
            msg=conn.recv(2048)
            if not msg:break
            print(msg.decode("utf-8"))
            # flag=msg[1]
            # console.print(msg.decode(),style=levelMap[1])