# Share-host-VPN-with-guest
Workaround for guest vm can't access to network vpn

# Testing on
- Big Sur 11.4
- VMware Fusion Professional Version 12.1.2 (17964953)

# อาการคือ 
เครื่อง mac ต่อ vpn แบบ split tunnel (GlobalProtect) แล้ว guest vm ไม่สามารถเข้าถึง network ของ vpn ได้  

# วิธีแก้ไข  
แก้ nat rule ให้ network nat ของ vm ไปทำ nat กับ inteface tunnel ของ vpn
1. โหลด script นี้ไปวางที่ไหนก็ได้ในเครื่อง mac แล้ว unzip
2. เปิด terminal ไปยัง folder
3. chmod +x update_vm_net_rules_script.sh
4. sudo ./update_vm_net_rules_script.sh แล้วใส่ password เครื่อง mac
5. ทดสอบ

*** เมื่อต่อ vpn ให้รัน script นี้ทุกครั้ง  
