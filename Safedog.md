## Update
```shell
(base) demo1984s@HP-Z420-Workstation:~/Shell$ bash Safedog.sh update
/home/demo1984s/Other/safedog_linux64 existed.
总计 44M
drwxrwxr-x 3 demo1984s demo1984s 4.0K  8月 29 11:43 safedog_linux64_20250829
-rw-rw-r-- 1 demo1984s demo1984s  44M  8月 11  2022 safedog_linux64_20250829.tar.gz
--2025-10-30 16:41:46--  https://www.safedog.cn/safedog_linux64.tar.gz
正在解析主机 www.safedog.cn (www.safedog.cn)... 120.41.45.100
正在连接 www.safedog.cn (www.safedog.cn)|120.41.45.100|:443... 已连接。
已发出 HTTP 请求，正在等待回应... 200 OK
长度： 45173644 (43M) [application/octet-stream]
正在保存至: ‘/home/demo1984s/Other/safedog_linux64/safedog_linux64_20251030.tar.gz’

/home/demo1984s/Other/safedog_linux64/safedog_l   0%[                                                                                                      ]  47.70K   149KB/s    用时 0.3s  

2025-10-30 16:41:46 (149 KB/s) - 在 48844 字节处连接关闭。 重试中。

...

--2025-10-30 16:48:38--  (尝试次数：36)  https://www.safedog.cn/safedog_linux64.tar.gz
正在连接 www.safedog.cn (www.safedog.cn)|120.41.45.100|:443... 已连接。
已发出 HTTP 请求，正在等待回应... 206 Partial Content
长度： 45173644 (43M)，剩余 1997541 (1.9M) [application/octet-stream]
正在保存至: ‘/home/demo1984s/Other/safedog_linux64/safedog_linux64_20251030.tar.gz’

/home/demo1984s/Other/safedog_linux64/safedog_l 100%[+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++====>]  43.08M   529KB/s    用时 3.7s  

2025-10-30 16:48:42 (529 KB/s) - 已保存 ‘/home/demo1984s/Other/safedog_linux64/safedog_linux64_20251030.tar.gz’ [45173644/45173644])

wget safedog_linux64.tar.gz ok
-rw-rw-r-- 1 demo1984s demo1984s 44M  8月 11  2022 safedog_linux64_20251030.tar.gz
safedog_an_linux64_2.8.32947/
safedog_an_linux64_2.8.32947/safedog__linux64_2.8.32947.tar.gz
safedog_an_linux64_2.8.32947/uninstall.py
safedog_an_linux64_2.8.32947/install.py
safedog_an_linux64_2.8.32947/safedog_nginx_linux64.tar.gz
safedog_an_linux64_2.8.32947/safedogwz_linux64.tar.gz
safedog_an_linux64_2.8.32947/up.sh
总计 4.0K
drwxrwxr-x 2 demo1984s demo1984s 4.0K  5月 13  2022 safedog_an_linux64_2.8.32947
install_file_dir: safedog_an_linux64_2.8.32947
extracting files ...
Would you like to backup the files of isolation?[y/n](default:y):
Would you like to backup safedog logs?[y/n](default:y):
Collecting setup information 
 
                                                                    [ok] 

Uninstall Server Defense Module 
 
                                                                 [ok] 

Uninstall Server Defense Module Compeletely
Apache Defense Module is not installed
Nginx Defense Module is not installed
Uninstall Common Module 
 
                                                                         [ok] 

Uninstall completely!
extracting files ...

Warning: Web defense module will restart web process during installation!!:  

Web defense module select:  
1.apache  
2.nginx  
. Input(Ctrl-C to skip web defense module installation): ^C
Cancel install web defense module!
step 1/2, start install common lib 
 
                                                              [ok] 

step 2/2, start Install Server Defense Module                                                      
  step 2.1, checking os release version... 
 
                                                      [ok] 

  step 2.2, installing file... 
 
                                                                  [ok] 

  step 2.3, start service... 
 
                                                                    [ok] 

  step 2.4, save safedog install info...
 
 Tips: 

  (1)safedog install directory: /etc/safedog 
  (2)install safedog version: 2.8.32947 
install safedog completely
Installation is complete!
(base) demo1984s@HP-Z420-Workstation:~/Shell$ bash Safedog.sh status
/home/demo1984s/Other/safedog_linux64 existed.
○ safedog.service - LSB: safedog server
     Loaded: loaded (/etc/init.d/safedog; generated)
     Active: inactive (dead)
       Docs: man:systemd-sysv-generator(8)
(base) demo1984s@HP-Z420-Workstation:~/Shell$ bash Safedog.sh stop
/home/demo1984s/Other/safedog_linux64 existed.
(base) demo1984s@HP-Z420-Workstation:~/Shell$ bash Safedog.sh start
/home/demo1984s/Other/safedog_linux64 existed.
(base) demo1984s@HP-Z420-Workstation:~/Shell$ bash Safedog.sh status
/home/demo1984s/Other/safedog_linux64 existed.


● safedog.service - LSB: safedog server
     Loaded: loaded (/etc/init.d/safedog; generated)
     Active: active (exited) since Thu 2025-10-30 16:57:50 CST; 5s ago
       Docs: man:systemd-sysv-generator(8)
    Process: 2371844 ExecStart=/etc/init.d/safedog start (code=exited, status=0/SUCCESS)
        CPU: 303ms

10月 30 16:57:47 HP-Z420-Workstation systemd[1]: Starting safedog.service - LSB: safedog server...
10月 30 16:57:50 HP-Z420-Workstation systemd[1]: Started safedog.service - LSB: safedog server.

```
