import os
import pyfiglet
import time


#giris = pyfiglet.figlet_format("MIMT Defence")
#print(giris)
while True:
    mac_list=[]
    arp=os.popen("arp -a").read()
    print("Safe...")
    for line in arp.split("\n"):
        if "dynamic" in line:
            ip=line.split()[0]
            mac=line.split()[1]
        

            if mac in mac_list:
                print("MITM Attack")
                print(time.time)
                print("IP addresi: "+ip)
                break
            else:
                mac_list.append(mac)


    time.sleep(5)



print(ip)
print(mac)