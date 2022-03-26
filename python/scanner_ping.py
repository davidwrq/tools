import os
import threading


def search(ip_adress):
    cmd = "ping -c 1 " + ip_adress
    res = os.popen(cmd).read()
    if "1 received" in res:
        print(f"found on : {ip_adress}")

for ip in range (1, 254):
    current_ip = "192.168.1." + str(ip)

    run = threading.Thread(target=search, args=(current_ip,))
    run.start()