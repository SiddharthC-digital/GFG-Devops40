   ,     #_
   ~\_  ####_        Amazon Linux 2023
  ~~  \_#####\
  ~~     \###|
  ~~       \#/ ___   https://aws.amazon.com/linux/amazon-linux-2023
   ~~       V~' '->
    ~~~         /
      ~~._.   _/
         _/ _/
       _/m/'
[ec2-user@ip-172-31-2-231 ~]$ sudo su root
[root@ip-172-31-2-231 ec2-user]# cd /
[root@ip-172-31-2-231 /]# useradd dev1
[root@ip-172-31-2-231 /]# useradd gfg
[root@ip-172-31-2-231 /]# useradd sudhanshu
[root@ip-172-31-2-231 /]# id dev1
uid=1001(dev1) gid=1001(dev1) groups=1001(dev1)
[root@ip-172-31-2-231 /]# groupadd devs
[root@ip-172-31-2-231 /]# groupadd managers
[root@ip-172-31-2-231 /]# usermod dev1 -g devs
[root@ip-172-31-2-231 /]# id dev1
uid=1001(dev1) gid=1004(devs) groups=1004(devs)
[root@ip-172-31-2-231 /]# useradd dev2 -g devs
[root@ip-172-31-2-231 /]# id dev2
uid=1004(dev2) gid=1004(devs) groups=1004(devs)
[root@ip-172-31-2-231 /]# id dev3
id: ‘dev3’: no such user
[root@ip-172-31-2-231 /]# useradd dev3 -g devs
[root@ip-172-31-2-231 /]# id dev3
uid=1005(dev3) gid=1004(devs) groups=1004(devs)
[root@ip-172-31-2-231 /]# usermod gfg -g managers
[root@ip-172-31-2-231 /]# usermod sudhanshu  -g managers
[root@ip-172-31-2-231 /]# id gfg
uid=1002(gfg) gid=1005(managers) groups=1005(managers)
[root@ip-172-31-2-231 /]# passwd dev1
Changing password for user dev1.
New password: 
BAD PASSWORD: The password is shorter than 8 characters
Retype new password: 
passwd: all authentication tokens updated successfully.
[root@ip-172-31-2-231 /]# 
[root@ip-172-31-2-231 /]# 
[root@ip-172-31-2-231 /]# passwd dev2
Changing password for user dev2.
New password: 
BAD PASSWORD: The password is shorter than 8 characters
Retype new password: 
passwd: all authentication tokens updated successfully.
[root@ip-172-31-2-231 /]# passwd dev3
Changing password for user dev3.
New password: 
BAD PASSWORD: The password is shorter than 8 characters
Retype new password: 
Sorry, passwords do not match.
New password: 
BAD PASSWORD: The password is shorter than 8 characters
Retype new password: 
passwd: all authentication tokens updated successfully.
[root@ip-172-31-2-231 /]# 
[root@ip-172-31-2-231 /]# 
[root@ip-172-31-2-231 /]# 
[root@ip-172-31-2-231 /]# 
[root@ip-172-31-2-231 /]# passwd sudhanshu
Changing password for user sudhanshu.
New password: 
BAD PASSWORD: The password is shorter than 8 characters
Retype new password: 
passwd: all authentication tokens updated successfully.
[root@ip-172-31-2-231 /]# 
[root@ip-172-31-2-231 /]# 
[root@ip-172-31-2-231 /]# passwd gfg
Changing password for user gfg.
New password: 
BAD PASSWORD: The password is shorter than 8 characters
Retype new password: 
passwd: all authentication tokens updated successfully.
[root@ip-172-31-2-231 /]# 
[root@ip-172-31-2-231 /]# 
[root@ip-172-31-2-231 /]# ls
bin  boot  dev  etc  home  lib  lib64  local  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
[root@ip-172-31-2-231 /]# cd /home/
[root@ip-172-31-2-231 home]# ls
dev1  dev2  dev3  ec2-user  gfg  sudhanshu
[root@ip-172-31-2-231 home]# whoami
root
[root@ip-172-31-2-231 home]# su dev1
[dev1@ip-172-31-2-231 home]$ whoami
dev1
[dev1@ip-172-31-2-231 home]$ yum install httpd
Error: This command has to be run with superuser privileges (under the root user on most systems).
[dev1@ip-172-31-2-231 home]$ cd
[dev1@ip-172-31-2-231 ~]$ pwd
/home/dev1
[dev1@ip-172-31-2-231 ~]$ date
Sun Nov  9 06:46:32 UTC 2025
[dev1@ip-172-31-2-231 ~]$ cal
    November 2025   
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30                  
[dev1@ip-172-31-2-231 ~]$ touch a.txt
[dev1@ip-172-31-2-231 ~]$ ls
a.txt
[dev1@ip-172-31-2-231 ~]$ pwd
/home/dev1
[dev1@ip-172-31-2-231 ~]$ ls
a.txt
[dev1@ip-172-31-2-231 ~]$ whoami
dev1
[dev1@ip-172-31-2-231 ~]$ su dev2
Password: 
[dev2@ip-172-31-2-231 dev1]$ ls
ls: cannot open directory '.': Permission denied
[dev2@ip-172-31-2-231 dev1]$ cd
[dev2@ip-172-31-2-231 ~]$ pwd
/home/dev2
[dev2@ip-172-31-2-231 ~]$ ls
[dev2@ip-172-31-2-231 ~]$ cat b.txt
cat: b.txt: No such file or directory
[dev2@ip-172-31-2-231 ~]$ touch b.txt
[dev2@ip-172-31-2-231 ~]$ ls
b.txt
[dev2@ip-172-31-2-231 ~]$ pwd
/home/dev2
[dev2@ip-172-31-2-231 ~]$ cd ..
[dev2@ip-172-31-2-231 home]$ whoami
dev2
[dev2@ip-172-31-2-231 home]$ ls
dev1  dev2  dev3  ec2-user  gfg  sudhanshu
[dev2@ip-172-31-2-231 home]$ cd dev1
bash: cd: dev1: Permission denied
[dev2@ip-172-31-2-231 home]$ exit
exit
[dev1@ip-172-31-2-231 ~]$ whoami
dev1
[dev1@ip-172-31-2-231 ~]$ cd 
[dev1@ip-172-31-2-231 ~]$ ls
a.txt
[dev1@ip-172-31-2-231 ~]$ pwd
/home/dev1
[dev1@ip-172-31-2-231 ~]$ ls -l
total 0
-rw-r--r--. 1 dev1 devs 0 Nov  9 06:46 a.txt
[dev1@ip-172-31-2-231 ~]$ ls -l -a
total 12
drwx------. 2 dev1 devs  75 Nov  9 06:46 .
drwxr-xr-x. 8 root root  86 Nov  9 06:42 ..
-rw-r--r--. 1 dev1 devs  18 Jan 28  2023 .bash_logout
-rw-r--r--. 1 dev1 devs 141 Jan 28  2023 .bash_profile
-rw-r--r--. 1 dev1 devs 492 Jan 28  2023 .bashrc
-rw-r--r--. 1 dev1 devs   0 Nov  9 06:46 a.txt
[dev1@ip-172-31-2-231 ~]$ chmod g+rwx .
[dev1@ip-172-31-2-231 ~]$ ls -l -a
total 12
drwxrwx---. 2 dev1 devs  75 Nov  9 06:46 .
drwxr-xr-x. 8 root root  86 Nov  9 06:42 ..
-rw-r--r--. 1 dev1 devs  18 Jan 28  2023 .bash_logout
-rw-r--r--. 1 dev1 devs 141 Jan 28  2023 .bash_profile
-rw-r--r--. 1 dev1 devs 492 Jan 28  2023 .bashrc
-rw-r--r--. 1 dev1 devs   0 Nov  9 06:46 a.txt
[dev1@ip-172-31-2-231 ~]$ su dev2
Password: 
[dev2@ip-172-31-2-231 dev1]$ ls
a.txt
[dev2@ip-172-31-2-231 dev1]$ su dev3
Password: 
[dev3@ip-172-31-2-231 dev1]$ ls
a.txt
[dev3@ip-172-31-2-231 dev1]$ su gfg
Password: 
[gfg@ip-172-31-2-231 dev1]$ ls
ls: cannot open directory '.': Permission denied
[gfg@ip-172-31-2-231 dev1]$ exit
exit
[dev3@ip-172-31-2-231 dev1]$ exit
exit
[dev2@ip-172-31-2-231 dev1]$ whoami
dev2
[dev2@ip-172-31-2-231 dev1]$ ls
a.txt
[dev2@ip-172-31-2-231 dev1]$ cat a.txt 
[dev2@ip-172-31-2-231 dev1]$ cat > a.txt 
bash: a.txt: Permission denied
[dev2@ip-172-31-2-231 dev1]$ touch b.txt
[dev2@ip-172-31-2-231 dev1]$ ls
a.txt  b.txt
[dev2@ip-172-31-2-231 dev1]$ exit
exit
[dev1@ip-172-31-2-231 ~]$ whoami
dev1
[dev1@ip-172-31-2-231 ~]$ ls
a.txt  b.txt
[dev1@ip-172-31-2-231 ~]$ cat > a.txt 
dsadadjkadjakdjakdj
[dev1@ip-172-31-2-231 ~]$ 
[dev1@ip-172-31-2-231 ~]$ cat a.txt 
dsadadjkadjakdjakdj
[dev1@ip-172-31-2-231 ~]$ ls -l
total 4
-rw-r--r--. 1 dev1 devs 20 Nov  9 06:57 a.txt
-rw-r--r--. 1 dev2 devs  0 Nov  9 06:57 b.txt
[dev1@ip-172-31-2-231 ~]$ chmod g+w a.txt 
[dev1@ip-172-31-2-231 ~]$ lls -l
bash: lls: command not found
[dev1@ip-172-31-2-231 ~]$ ls -l
total 4
-rw-rw-r--. 1 dev1 devs 20 Nov  9 06:57 a.txt
-rw-r--r--. 1 dev2 devs  0 Nov  9 06:57 b.txt
[dev1@ip-172-31-2-231 ~]$ su dev2
Password: 
[dev2@ip-172-31-2-231 dev1]$ ls
a.txt  b.txt
[dev2@ip-172-31-2-231 dev1]$ cat a.txt 
dsadadjkadjakdjakdj
[dev2@ip-172-31-2-231 dev1]$ cat > a.txt 
hi hello
[dev2@ip-172-31-2-231 dev1]$ cat a.txt 
hi hello
[dev2@ip-172-31-2-231 dev1]$ pwd
/home/dev1
[dev2@ip-172-31-2-231 dev1]$ whoami
dev2
[dev2@ip-172-31-2-231 dev1]$ yum install httpd
Error: This command has to be run with superuser privileges (under the root user on most systems).
[dev2@ip-172-31-2-231 dev1]$ sudo yum install httpd

We trust you have received the usual lecture from the local System
Administrator. It usually boils down to these three things:

    #1) Respect the privacy of others.
    #2) Think before you type.
    #3) With great power comes great responsibility.

For security reasons, the password you type will not be visible.

[sudo] password for dev2: 
dev2 is not in the sudoers file.
[dev2@ip-172-31-2-231 dev1]$ cd /etc
[dev2@ip-172-31-2-231 etc]$ ls
DIR_COLORS                chrony.conf      dracut.conf.d  hibinit-config.cfg  libibverbs.d    nanorc         profile.d         screenrc       sudoers.d
DIR_COLORS.lightbgcolor   chrony.d         environment    host.conf           libnl           netconfig      protocols         security       sysconfig
GREP_COLORS               chrony.keys      ethertypes     hostname            libreport       networks       rc.d              selinux        sysctl.conf
NetworkManager            cifs-utils       exports        hosts               libuser.conf    nfs.conf       rc0.d             services       sysctl.d
X11                       cloud            exports.d      idmapd.conf         locale.conf     nfsmount.conf  rc1.d             sestatus.conf  system-release
acpi                      cron.daily       filesystems    image-id            localtime       nsswitch.conf  rc2.d             shadow         system-release-cpe
adjtime                   cron.hourly      fstab          init.d              login.defs      openldap       rc3.d             shadow-        systemd
aliases                   cron.monthly     gcrypt         inittab             logrotate.conf  opt            rc4.d             shells         terminfo
alternatives              cron.weekly      gnupg          inputrc             logrotate.d     os-release     rc5.d             skel           tmpfiles.d
amazon                    crontab          groff          issue               lsm             pam.d          rc6.d             ssh            trusted-key.key
amazon-linux-release      crypto-policies  group          issue.net           machine-id      passwd         request-key.conf  ssl            udev
amazon-linux-release-cpe  csh.cshrc        group-         kernel              magic           passwd-        request-key.d     sssd           update-motd.d
at.deny                   csh.login        grub.d         keyutils            man_db.conf     pkcs11         resolv.conf       statetab.d     vimrc
audit                     dbus-1           grub2-efi.cfg  krb5.conf           mke2fs.conf     pkgconfig      rpc               subgid         virc
bash_completion.d         default          grub2.cfg      krb5.conf.d         modprobe.d      pki            rpm               subgid-        wgetrc
bashrc                    depmod.d         gshadow        ld.so.cache         modules-load.d  pm             rsyncd.conf       subuid         xattr.conf
bindresvport.blacklist    dhcp             gshadow-       ld.so.conf          motd            popt.d         rsyslog.d         subuid-        xdg
binfmt.d                  dnf              gss            ld.so.conf.d        motd.d          printcap       rwtab.d           sudo.conf      yum.repos.d
chkconfig.d               dracut.conf      gssproxy       libaudit.conf       mtab            profile        sasl2             sudoers
[dev2@ip-172-31-2-231 etc]$ ls -l
total 1132
-rw-r--r--.  1 root root     4673 Sep 12 18:12 DIR_COLORS
-rw-r--r--.  1 root root     4755 Sep 12 18:12 DIR_COLORS.lightbgcolor
-rw-r--r--.  1 root root       94 Jan 30  2023 GREP_COLORS
drwxr-xr-x.  3 root root       26 Nov  4 02:08 NetworkManager
drwxr-xr-x.  6 root root       70 Nov  4 02:07 X11
drwxr-xr-x.  4 root root       35 Nov  4 02:08 acpi
-rw-r--r--.  1 root root       16 Nov  4 02:09 adjtime
-rw-r--r--.  1 root root     1529 Jun 23  2020 aliases
drwxr-xr-x.  2 root root      213 Nov  4 02:08 alternatives
drwxr-xr-x.  3 root root       17 Nov  4 02:08 amazon
lrwxrwxrwx.  1 root root       25 Nov  3 18:34 amazon-linux-release -> ../usr/lib/system-release
lrwxrwxrwx.  1 root root       29 Nov  3 18:34 amazon-linux-release-cpe -> ../usr/lib/system-release-cpe
-rw-r--r--.  1 root root        1 Jan 30  2023 at.deny
drwxr-x---.  4 root root      100 Nov  9 06:29 audit
drwxr-xr-x.  2 root root       30 Nov  4 02:08 bash_completion.d
-rw-r--r--.  1 root root     3019 Jun 23  2020 bashrc
-rw-r--r--.  1 root root      535 Feb  2  2023 bindresvport.blacklist
drwxr-xr-x.  2 root root        6 Oct  7 15:09 binfmt.d
drwxr-xr-x.  2 root root        6 Jan 29  2023 chkconfig.d
-rw-r--r--.  1 root root     1425 Jan 13  2025 chrony.conf
drwxr-xr-x.  2 root root       20 Nov  4 02:08 chrony.d
-rw-r-----.  1 root chrony    540 Aug 29  2022 chrony.keys
drwxr-xr-x.  2 root root       26 Nov  4 02:08 cifs-utils
drwxr-xr-x.  4 root root       59 Nov  4 02:08 cloud
drwxr-xr-x.  2 root root        6 Jan 30  2023 cron.daily
drwxr-xr-x.  2 root root        6 Jan 30  2023 cron.hourly
drwxr-xr-x.  2 root root        6 Jan 30  2023 cron.monthly
drwxr-xr-x.  2 root root        6 Jan 30  2023 cron.weekly
-rw-r--r--.  1 root root      451 Jan 30  2023 crontab
drwxr-xr-x.  6 root root       81 Nov  4 02:07 crypto-policies
-rw-r--r--.  1 root root     1657 Jun 23  2020 csh.cshrc
-rw-r--r--.  1 root root     1093 Jun 23  2020 csh.login
drwxr-xr-x.  4 root root       78 Nov  4 02:07 dbus-1
drwxr-xr-x.  2 root root       33 Nov  4 02:09 default
drwxr-xr-x.  2 root root        6 Jan 31  2023 depmod.d
drwxr-xr-x.  3 root root       56 Nov  4 02:09 dhcp
drwxr-xr-x.  8 root root      128 Nov  4 02:07 dnf
-rw-r--r--.  1 root root      117 Oct 25  2024 dracut.conf
drwxr-xr-x.  2 root root       22 Nov  4 02:09 dracut.conf.d
-rw-r--r--.  1 root root        0 Jan 30  2023 environment
-rw-r--r--.  1 root root     1362 Jun 23  2020 ethertypes
-rw-r--r--.  1 root root        0 Jun 23  2020 exports
drwxr-xr-x.  2 root root        6 Feb  1  2023 exports.d
-rw-r--r--.  1 root root       66 Jun 23  2020 filesystems
-rw-r--r--.  1 root root      217 Nov  4 02:09 fstab
drwxr-xr-x.  2 root root        6 Oct  4  2024 gcrypt
drwxr-xr-x.  2 root root        6 Nov  4 02:07 gnupg
drwxr-xr-x.  4 root root       40 Nov  4 02:07 groff
-rw-r--r--.  1 root root      814 Nov  9 06:41 group
-rw-r--r--.  1 root root      797 Nov  9 06:41 group-
drwx------.  2 root root      253 Nov  4 02:07 grub.d
lrwxrwxrwx.  1 root root       22 Oct 13 08:21 grub2-efi.cfg -> ../boot/grub2/grub.cfg
lrwxrwxrwx.  1 root root       22 Oct 13 08:21 grub2.cfg -> ../boot/grub2/grub.cfg
----------.  1 root root      670 Nov  9 06:41 gshadow
----------.  1 root root      657 Nov  9 06:41 gshadow-
drwxr-xr-x.  3 root root       20 Nov  4 02:07 gss
drwxr-xr-x.  2 root root       87 Nov  4 02:08 gssproxy
-rw-r--r--.  1 root root     1047 Jan 25  2024 hibinit-config.cfg
-rw-r--r--.  1 root root        9 Jun 23  2020 host.conf
-rw-r--r--.  1 root root       44 Nov  9 06:29 hostname
-rw-r--r--.  1 root root      126 Nov  4 02:09 hosts
-rw-r--r--.  1 root root     5799 Feb  1  2023 idmapd.conf
-rw-r--r--.  1 root root      270 Nov  4 02:09 image-id
lrwxrwxrwx.  1 root root       11 Jan 29  2023 init.d -> rc.d/init.d
-rw-r--r--.  1 root root      490 Oct  7 15:09 inittab
-rw-r--r--.  1 root root      943 Jun 23  2020 inputrc
lrwxrwxrwx.  1 root root       16 Nov  3 18:34 issue -> ../usr/lib/issue
lrwxrwxrwx.  1 root root       20 Nov  3 18:34 issue.net -> ../usr/lib/issue.net
drwxr-xr-x.  3 root root       38 Nov  4 02:09 kernel
drwxr-xr-x.  2 root root        6 Feb 25  2025 keyutils
-rw-r--r--.  1 root root      880 Aug 26 18:34 krb5.conf
drwxr-xr-x.  2 root root       55 Nov  4 02:08 krb5.conf.d
-rw-r--r--.  1 root root    14243 Nov  4 02:08 ld.so.cache
-rw-r--r--.  1 root root       28 Sep  3 03:41 ld.so.conf
drwxr-xr-x.  2 root root       33 Nov  4 02:08 ld.so.conf.d
-rw-r-----.  1 root root      191 Jul 29  2024 libaudit.conf
drwxr-xr-x.  2 root root    16384 Nov  4 02:07 libibverbs.d
drwxr-xr-x.  2 root root       35 Nov  4 02:07 libnl
drwxr-xr-x.  6 root root       70 Nov  4 02:07 libreport
-rw-r--r--.  1 root root     2391 Mar  1  2021 libuser.conf
-rw-r--r--.  1 root root       79 Nov  9 06:29 locale.conf
-rw-r--r--.  1 root root      114 Nov  4 02:09 localtime
-rw-r--r--.  1 root root     8402 Nov 20  2023 login.defs
-rw-r--r--.  1 root root      493 Apr 16  2021 logrotate.conf
drwxr-xr-x.  2 root root       81 Nov  4 02:08 logrotate.d
drwxr-xr-x.  3 root root       43 Nov  4 02:08 lsm
-r--r--r--.  1 root root       33 Nov  9 06:29 machine-id
-rw-r--r--.  1 root root      111 Aug 30  2023 magic
-rw-r--r--.  1 root root     5235 Feb  1  2023 man_db.conf
-rw-r--r--.  1 root root      782 Jan 30  2023 mke2fs.conf
drwxr-xr-x.  2 root root       24 Nov  4 02:08 modprobe.d
drwxr-xr-x.  2 root root        6 Oct  7 15:09 modules-load.d
lrwxrwxrwx.  1 root root       25 Nov  4 02:08 motd -> /var/lib/update-motd/motd
drwxr-xr-x.  2 root root        6 Jan 30  2023 motd.d
lrwxrwxrwx.  1 root root       19 Nov  4 02:07 mtab -> ../proc/self/mounts
-rw-r--r--.  1 root root    11926 Feb 19  2025 nanorc
-rw-r--r--.  1 root root      767 Feb  2  2023 netconfig
-rw-r--r--.  1 root root       58 Jun 23  2020 networks
-rw-r--r--.  1 root root     1439 Feb  1  2023 nfs.conf
-rw-r--r--.  1 root root     3606 Feb  1  2023 nfsmount.conf
-rw-r--r--.  1 root root     2108 Sep  3 18:30 nsswitch.conf
drwxr-xr-x.  3 root root       36 Nov  4 02:07 openldap
drwxr-xr-x.  2 root root        6 Jan 30  2023 opt
lrwxrwxrwx.  1 root root       21 Nov  3 18:34 os-release -> ../usr/lib/os-release
drwxr-xr-x.  2 root root    16384 Nov  4 02:08 pam.d
-rw-r--r--.  1 root root     1722 Nov  9 06:42 passwd
-rw-r--r--.  1 root root     1722 Nov  9 06:42 passwd-
drwxr-xr-x.  3 root root       21 Nov  4 02:07 pkcs11
drwxr-xr-x.  3 root root       27 Nov  4 02:08 pkgconfig
drwxr-xr-x.  7 root root       73 Nov  4 02:08 pki
drwxr-xr-x.  5 root root       52 Nov  4 02:07 pm
drwxr-xr-x.  2 root root        6 Jan 29  2023 popt.d
-rw-r--r--.  1 root root      233 Jun 23  2020 printcap
-rw-r--r--.  1 root root     1816 Jun 23  2020 profile
drwxr-xr-x.  2 root root    16384 Nov  4 02:08 profile.d
-rw-r--r--.  1 root root     6568 Jun 23  2020 protocols
drwxr-xr-x. 10 root root      111 Jan 31  2023 rc.d
lrwxrwxrwx.  1 root root       10 Jan 29  2023 rc0.d -> rc.d/rc0.d
lrwxrwxrwx.  1 root root       10 Jan 29  2023 rc1.d -> rc.d/rc1.d
lrwxrwxrwx.  1 root root       10 Jan 29  2023 rc2.d -> rc.d/rc2.d
lrwxrwxrwx.  1 root root       10 Jan 29  2023 rc3.d -> rc.d/rc3.d
lrwxrwxrwx.  1 root root       10 Jan 29  2023 rc4.d -> rc.d/rc4.d
lrwxrwxrwx.  1 root root       10 Jan 29  2023 rc5.d -> rc.d/rc5.d
lrwxrwxrwx.  1 root root       10 Jan 29  2023 rc6.d -> rc.d/rc6.d
-rw-r--r--.  1 root root     1787 Feb 25  2025 request-key.conf
drwxr-xr-x.  2 root root       30 Nov  4 02:08 request-key.d
lrwxrwxrwx.  1 root root       32 Nov  4 02:08 resolv.conf -> /run/systemd/resolve/resolv.conf
-rw-r--r--.  1 root root     1634 Aug  2  2021 rpc
drwxr-xr-x.  2 root root        6 Feb 26  2024 rpm
-rw-r--r--.  1 root root      458 Jan 15  2025 rsyncd.conf
drwxr-xr-x.  2 root root       31 Nov  4 02:08 rsyslog.d
drwxr-xr-x.  2 root root       51 Nov  4 02:08 rwtab.d
drwxr-xr-x.  2 root root        6 Jan 30  2023 sasl2
-rw-r--r--.  1 root root     6720 Jun  2 21:55 screenrc
drwxr-xr-x.  7 root root    16384 Nov  4 02:07 security
drwxr-xr-x.  3 root root       57 Nov  4 02:09 selinux
-rw-r--r--.  1 root root   692252 Jun 23  2020 services
-rw-r--r--.  1 root root      216 Feb  1  2023 sestatus.conf
----------.  1 root root     1413 Nov  9 06:44 shadow
----------.  1 root root      866 Nov  9 06:42 shadow-
-rw-r--r--.  1 root root       90 Nov  4 02:08 shells
drwxr-xr-x.  2 root root       62 Jan 30  2023 skel
drwxr-xr-x.  4 root root      214 Nov  9 06:29 ssh
drwxr-xr-x.  2 root root       91 Nov  4 02:07 ssl
drwx------.  4 root root       31 Nov  4 02:08 sssd
drwxr-xr-x.  2 root root        6 Jan 30  2023 statetab.d
-rw-r--r--.  1 root root      116 Nov  9 06:42 subgid
-rw-r--r--.  1 root root       98 Nov  9 06:42 subgid-
-rw-r--r--.  1 root root      116 Nov  9 06:42 subuid
-rw-r--r--.  1 root root       98 Nov  9 06:42 subuid-
-rw-r-----.  1 root root     4316 Jun 30 16:02 sudo.conf
-r--r-----.  1 root root     4375 Jun 30 15:59 sudoers
drwxr-x---.  2 root root       33 Nov  9 06:29 sudoers.d
drwxr-xr-x.  5 root root    16384 Nov  4 02:09 sysconfig
-rw-r--r--.  1 root root      449 Oct  7 15:09 sysctl.conf
drwxr-xr-x.  2 root root       52 Nov  4 02:08 sysctl.d
lrwxrwxrwx.  1 root root       25 Nov  3 18:34 system-release -> ../usr/lib/system-release
lrwxrwxrwx.  1 root root       29 Nov  3 18:34 system-release-cpe -> ../usr/lib/system-release-cpe
drwxr-xr-x.  6 root root    16384 Nov  4 02:09 systemd
drwxr-xr-x.  2 root root        6 Feb 26  2024 terminfo
drwxr-xr-x.  2 root root        6 Oct  7 15:09 tmpfiles.d
-rw-r--r--.  1 root root      375 Oct 23 23:36 trusted-key.key
drwxr-xr-x.  4 root root       68 Nov  4 02:09 udev
drwxr-xr-x.  2 root root       34 Nov 22  2024 update-motd.d
-rw-r--r--.  1 root root     4017 Aug  4 16:45 vimrc
-rw-r--r--.  1 root root     1183 Aug  4 16:45 virc
-rw-r--r--.  1 root root     4925 Jul  8  2024 wgetrc
-rw-r--r--.  1 root root      817 Jan 29  2023 xattr.conf
drwxr-xr-x.  4 root root       38 Nov  4 02:07 xdg
drwxr-xr-x.  2 root root       59 Nov  3 18:34 yum.repos.d
[dev2@ip-172-31-2-231 etc]$ cd /home/dev1
[dev2@ip-172-31-2-231 dev1]$ exit
exit
[dev1@ip-172-31-2-231 ~]$ exit
exit
[root@ip-172-31-2-231 home]# 
[root@ip-172-31-2-231 home]# 
[root@ip-172-31-2-231 home]# 
[root@ip-172-31-2-231 home]# 
[root@ip-172-31-2-231 home]# 
[root@ip-172-31-2-231 home]# 
[root@ip-172-31-2-231 home]# vi /etc/sudoers
[root@ip-172-31-2-231 home]# date
Sun Nov  9 07:10:02 UTC 2025
[root@ip-172-31-2-231 home]# cak
bash: cak: command not found
[root@ip-172-31-2-231 home]# cal
    November 2025   
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30                  
[root@ip-172-31-2-231 home]# which date
/usr/bin/date
[root@ip-172-31-2-231 home]# /usr/bin/date
Sun Nov  9 07:10:35 UTC 2025
[root@ip-172-31-2-231 home]# which cal
/usr/bin/cal
[root@ip-172-31-2-231 home]# cd /usr/bin/
[root@ip-172-31-2-231 bin]# ls
'['                     dnsdomainname           jsonpatch-3          os-prober            sedispol                         time
 ac                     dnstap-read             jsonpatch-3.9        p11-kit              semodule_expand                  timedatectl
 acpi_listen            domainname              jsonpointer          package-cleanup      semodule_link                    timeout
 addr2line              dracut                  jsonpointer-3        passwd               semodule_package                 tload
 alias                  du                      jsonpointer-3.9      paste                semodule_unpackage               toe
 amazon-ssm-agent       dumpkeys                jsonschema           pathchk              seq                              top
 apropos                dwz                     kbd_mode             peekfd               sestatus                         touch
 apropos.man-db         ec2-metadata            kbdinfo              perl                 set-hostname-imds                tput
 ar                     echo                    kbdrate              perl5.32.1           setarch                          tr
 arch                   ed                      kernel-install       perldoc              setfacl                          tracepath
 arpaname               efisecdb                keyctl               pgrep                setfattr                         traceroute
 arping                 efivar                  kill                 pic                  setfont                          traceroute6
 as                     egrep                   killall              piconv               setkeycodes                      troff
 at                     eject                   kmod                 pidof                setleds                          true
 atq                    elfedit                 last                 pidstat              setmetamode                      truncate
 atrm                   encguess                lastb                pidwait              setpriv                          trust
 attr                   env                     lastcomm             ping                 setsid                           tset
 audit2allow            envsubst                lastlog              pinky                setterm                          tsort
 audit2why              eqn                     lchfn                pkg-config           setup-nsssysinit                 tty
 aulast                 ex                      lchsh                pkgconf              setup-nsssysinit.sh              turbostat
 aulastlog              expand                  ld                   pkill                setup-policy-routes              type
 ausyscall              expr                    ld.bfd               pldd                 setvtrgb                         tzselect
 auvirt                 factor                  ld.so                pmap                 sftp                             uclampset
 awk                    fallocate               ldd                  pod2man              sg                               udevadm
 aws                    false                   less                 pod2text             sh                               ul
 aws_completer          fc                      lessecho             pod2usage            sha1hmac                         ulimit
 b2sum                  fg                      lesskey              portablectl          sha1sum                          umask
 base32                 fgconsole               lesspipe.sh          post-grohtml         sha224hmac                       umount
 base64                 fgrep                   lexgrog              powernow-k8-decode   sha224sum                        unalias
 basename               file                    link                 pr                   sha256hmac                       uname
 basenc                 fincore                 linux-boot-prober    pre-grohtml          sha256sum                        uname26
 bash                   find                    linux32              preconv              sha384hmac                       unexpand
 bashbug                find-repos-of-install   linux64              printenv             sha384sum                        unicode_start
 bashbug-64             findmnt                 ln                   printf               sha512hmac                       unicode_stop
 batch                  fips-finish-install     loadkeys             prlimit              sha512sum                        uniq
 bc                     fips-mode-setup         loadunimap           prtstat              showconsolefont                  unlink
 bg                     flock                   locale               ps                   showkey                          unshare
 bootctl                fmt                     localectl            psfaddtable          shred                            unxz
 bunzip2                fold                    localedef            psfgettable          shuf                             unzip
 busctl                 free                    logger               psfstriptable        sim_lsmplugin                    unzipsfx
 bzcat                  funzip                  login                psfxtable            simc_lsmplugin                   unzstd
 bzcmp                  fuse2fs                 loginctl             pslog                size                             update-ca-trust
 bzdiff                 gapplication            logname              pstree               skill                            update-crypto-policies
 bzegrep                gawk                    look                 pstree.x11           slabtop                          uptime
 bzfgrep                gdbus                   ls                   ptx                  sleep                            userdbctl
 bzgrep                 gencat                  lsattr               pwd                  sm3hmac                          users
 bzip2                  geqn                    lsblk                pwdx                 snice                            usleep
 bzip2recover           getconf                 lscpu                pwmake               soelim                           utmpdump
 bzless                 getent                  lsinitrd             pwscore              soelim.groff                     uuidgen
 bzmore                 getfacl                 lsipc                pydoc                sort                             uuidparse
 c++filt                getfattr                lsirq                pydoc3               sotruss                          vdir
 ca-legacy              getkeycodes             lslocks              pydoc3.9             split                            vi
 cal                    getopt                  lslogins             python3              sprof                            view
 captoinfo              getopts                 lsmcli               python3.9            ssh                              vim
 cat                    gettext                 lsmd                 pzstd                ssh-add                          vimdiff
 catchsegv              gettext.sh              lsmem                quota                ssh-agent                        vimtutor
 catman                 gio                     lsns                 quotasync            ssh-copy-id                      vlock
 cd                     gio-querymodules-64     lsof                 ranlib               ssh-keygen                       vmstat
 centrino-decode        glib-compile-schemas    make-dummy-cert      read                 ssh-keyscan                      w
 cfn-elect-cmd-leader   gneqn                   man                  readelf              ssm-agent-worker                 wait
 cfn-get-metadata       gnroff                  man-recode           readlink             ssm-cli                          wall
 cfn-hup                gpasswd                 man.man-db           realpath             ssm-document-worker              watch
 cfn-init               gpg                     mandb                recode-sr-latin      ssm-session-logger               wc
 cfn-send-cmd-event     gpg-error               manpath              red                  ssm-session-worker               wcurl
 cfn-send-cmd-result    gpg2                    mapscrn              rename               sss_ssh_authorizedkeys           wdctl
 cfn-signal             gpgme-json              mcookie              renew-dummy-cert     sss_ssh_knownhostsproxy          wget
 chacl                  gpgv2                   md5sum               renice               stap-merge                       whatis
 chage                  gpic                    mesg                 repo-graph           stap-report                      whatis.man-db
 chardetect             gprof                   miniterm-3.9.py      repoclosure          stapbpf                          whereis
 chattr                 grep                    miniterm-3.py        repodiff             stapdyn                          which
 chcat                  groff                   miniterm.py          repomanage           staprun                          whiptail
 chcon                  grops                   mkdir                repoquery            stapsh                           who
 checkmodule            grotty                  mkfifo               reposync             stat                             whoami
 checkpolicy            groups                  mknod                repotrack            stdbuf                           write
 chevron                growpart                mktemp               reset                strace                           x86_64
 chgrp                  grub2-amazon-setup      mmdblookup           resizecons           strace-log-merge                 x86_64-amazon-linux-gnu-pkg-config
 chmem                  grub2-editenv           modulemd-validator   resolvectl           strings                          x86_energy_perf_policy
 chmod                  grub2-file              more                 rev                  strip                            xargs
 choom                  grub2-menulst2cfg       mount                rm                   stty                             xgettext
 chown                  grub2-mkimage           mountpoint           rmdir                su                               xmlcatalog
 chronyc                grub2-mkpasswd-pbkdf2   mpstat               rnano                sudo                             xmllint
 chrt                   grub2-mkrelpath         msgattrib            rngtest              sudoedit                         xmlwf
 chvt                   grub2-mount             msgcat               rpcbind              sudoreplay                       xxd
 cifsiostat             grub2-script-check      msgcmp               rpcinfo              sum                              xz
 cksum                  gsettings               msgcomm              rpm                  sync                             xzcat
 clear                  gsoelim                 msgconv              rpm2archive          systemctl                        xzcmp
 clockdiff              gtar                    msgen                rpm2cpio             systemd-analyze                  xzdec
 cloud-id               gtbl                    msgexec              rpmdb                systemd-ask-password             xzdiff
 cloud-init             gtroff                  msgfilter            rpmkeys              systemd-cat                      xzegrep
 cloud-init-per         gunzip                  msgfmt               rpmquery             systemd-cgls                     xzfgrep
 cmp                    gzexe                   msggrep              rpmverify            systemd-cgtop                    xzgrep
 col                    gzip                    msginit              rst2html             systemd-creds                    xzless
 colcrt                 hardlink                msgmerge             rst2html4            systemd-cryptenroll              xzmore
 colrm                  hash                    msgunfmt             rst2html5            systemd-delta                    yes
 column                 head                    msguniq              rst2latex            systemd-detect-virt              ypdomainname
 comm                   hexdump                 mv                   rst2man              systemd-dissect                  yum
 command                hibinit-agent           named-checkzone      rst2odt              systemd-escape                   yum-builddep
 coredumpctl            homectl                 named-compilezone    rst2odt_prepstyles   systemd-firstboot                yum-config-manager
 cp                     host                    named-nzd2nzf        rst2pseudoxml        systemd-hwdb                     yum-debug-dump
 cpio                   hostid                  namei                rst2s5               systemd-id128                    yum-debug-restore
 cpupower               hostname                nano                 rst2xetex            systemd-inhibit                  yum-groups-manager
 csh                    hostnamectl             needs-restarting     rst2xml              systemd-machine-id-setup         yumdownloader
 csplit                 hunspell                neqn                 rstpep2html          systemd-mount                    zcat
 curl                   i386                    netstat              rsync                systemd-notify                   zcmp
 cut                    iconv                   networkctl           rsync-ssl            systemd-path                     zdiff
 cvtsudoers             id                      newgidmap            run-parts            systemd-repart                   zdump
 cyrusbdb2current       info                    newgrp               runcon               systemd-resolve                  zegrep
 date                   infocmp                 newuidmap            rvi                  systemd-run                      zfgrep
 dbus-broker            infotocap               ngettext             rview                systemd-socket-activate          zforce
 dbus-broker-launch     install                 nice                 rvim                 systemd-stdio-bridge             zgrep
 dc                     ionice                  nisdomainname        sadf                 systemd-sysext                   zip
 dd                     iostat                  nl                   sar                  systemd-sysusers                 zipcloak
 deallocvt              ipcmk                   nm                   sbattach             systemd-tmpfiles                 zipgrep
 debuginfo-install      ipcrm                   nohup                sbkeysync            systemd-tty-ask-password-agent   zipinfo
 debuginfod-find        ipcs                    nproc                sbsiglist            systemd-umount                   zipnote
 delv                   irqtop                  nroff                sbsign               tabs                             zipsplit
 df                     isosize                 nsec3hash            sbvarsign            tac                              zless
 diff                   jemalloc.sh             nsenter              sbverify             tail                             zmore
 diff3                  jobs                    nslookup             scp                  tapestat                         znew
 dig                    join                    nsupdate             screen               tar                              zsoelim
 dir                    journalctl              numfmt               script               taskset                          zstd
 dircolors              jp.py                   objcopy              scriptlive           tbl                              zstdcat
 dirname                jq                      objdump              scriptreplay         tcptraceroute                    zstdgrep
 distro                 jsondiff                od                   sdiff                tcsh                             zstdless
 dmesg                  jsondiff-3              oomctl               secon                tee                              zstdmt
 dnf                    jsondiff-3.9            openssl              sed                  test
 dnf-3                  jsonpatch               openvt               sedismod             tic
[root@ip-172-31-2-231 bin]# ls | grep date
date
nsupdate
timedatectl
update-ca-trust
update-crypto-policies
[root@ip-172-31-2-231 bin]# cd /
[root@ip-172-31-2-231 /]# which date
/usr/bin/date
[root@ip-172-31-2-231 /]# which yum
/usr/bin/yum
[root@ip-172-31-2-231 /]# vi /etc/sudoers
[root@ip-172-31-2-231 /]# su dev1
[dev1@ip-172-31-2-231 /]$ yum install httpd 
Error: This command has to be run with superuser privileges (under the root user on most systems).
[dev1@ip-172-31-2-231 /]$ sudo yum install httpd

We trust you have received the usual lecture from the local System
Administrator. It usually boils down to these three things:

    #1) Respect the privacy of others.
    #2) Think before you type.
    #3) With great power comes great responsibility.

For security reasons, the password you type will not be visible.

[sudo] password for dev1: 
Amazon Linux 2023 Kernel Livepatch repository                                                                                            263 kB/s |  28 kB     00:00    
Dependencies resolved.
=========================================================================================================================================================================
 Package                                      Architecture                    Version                                         Repository                            Size
=========================================================================================================================================================================
Installing:
 httpd                                        x86_64                          2.4.65-1.amzn2023.0.2                           amazonlinux                           47 k
Installing dependencies:
 apr                                          x86_64                          1.7.5-1.amzn2023.0.4                            amazonlinux                          129 k
 apr-util                                     x86_64                          1.6.3-1.amzn2023.0.2                            amazonlinux                           97 k
 apr-util-lmdb                                x86_64                          1.6.3-1.amzn2023.0.2                            amazonlinux                           13 k
 generic-logos-httpd                          noarch                          18.0.0-12.amzn2023.0.3                          amazonlinux                           19 k
 httpd-core                                   x86_64                          2.4.65-1.amzn2023.0.2                           amazonlinux                          1.4 M
 httpd-filesystem                             noarch                          2.4.65-1.amzn2023.0.2                           amazonlinux                           13 k
 httpd-tools                                  x86_64                          2.4.65-1.amzn2023.0.2                           amazonlinux                           81 k
 libbrotli                                    x86_64                          1.0.9-4.amzn2023.0.2                            amazonlinux                          315 k
 mailcap                                      noarch                          2.1.49-3.amzn2023.0.3                           amazonlinux                           33 k
Installing weak dependencies:
 apr-util-openssl                             x86_64                          1.6.3-1.amzn2023.0.2                            amazonlinux                           15 k
 mod_http2                                    x86_64                          2.0.27-1.amzn2023.0.3                           amazonlinux                          166 k
 mod_lua                                      x86_64                          2.4.65-1.amzn2023.0.2                           amazonlinux                           60 k

Transaction Summary
=========================================================================================================================================================================
Install  13 Packages

Total download size: 2.4 M
Installed size: 6.9 M
Is this ok [y/N]: t
Is this ok [y/N]: y
Downloading Packages:
(1/13): apr-util-lmdb-1.6.3-1.amzn2023.0.2.x86_64.rpm                                                                                    420 kB/s |  13 kB     00:00    
(2/13): apr-1.7.5-1.amzn2023.0.4.x86_64.rpm                                                                                              3.4 MB/s | 129 kB     00:00    
(3/13): apr-util-1.6.3-1.amzn2023.0.2.x86_64.rpm                                                                                         2.2 MB/s |  97 kB     00:00    
(4/13): apr-util-openssl-1.6.3-1.amzn2023.0.2.x86_64.rpm                                                                                 680 kB/s |  15 kB     00:00    
(5/13): generic-logos-httpd-18.0.0-12.amzn2023.0.3.noarch.rpm                                                                            901 kB/s |  19 kB     00:00    
(6/13): httpd-2.4.65-1.amzn2023.0.2.x86_64.rpm                                                                                           2.1 MB/s |  47 kB     00:00    
(7/13): httpd-filesystem-2.4.65-1.amzn2023.0.2.noarch.rpm                                                                                598 kB/s |  13 kB     00:00    
(8/13): httpd-core-2.4.65-1.amzn2023.0.2.x86_64.rpm                                                                                       38 MB/s | 1.4 MB     00:00    
(9/13): httpd-tools-2.4.65-1.amzn2023.0.2.x86_64.rpm                                                                                     2.5 MB/s |  81 kB     00:00    
(10/13): libbrotli-1.0.9-4.amzn2023.0.2.x86_64.rpm                                                                                       9.5 MB/s | 315 kB     00:00    
(11/13): mailcap-2.1.49-3.amzn2023.0.3.noarch.rpm                                                                                        1.3 MB/s |  33 kB     00:00    
(12/13): mod_http2-2.0.27-1.amzn2023.0.3.x86_64.rpm                                                                                      5.1 MB/s | 166 kB     00:00    
(13/13): mod_lua-2.4.65-1.amzn2023.0.2.x86_64.rpm                                                                                        3.2 MB/s |  60 kB     00:00    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                     14 MB/s | 2.4 MB     00:00     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                                                                 1/1 
  Installing       : apr-1.7.5-1.amzn2023.0.4.x86_64                                                                                                                1/13 
  Installing       : apr-util-lmdb-1.6.3-1.amzn2023.0.2.x86_64                                                                                                      2/13 
  Installing       : apr-util-openssl-1.6.3-1.amzn2023.0.2.x86_64                                                                                                   3/13 
  Installing       : apr-util-1.6.3-1.amzn2023.0.2.x86_64                                                                                                           4/13 
  Installing       : mailcap-2.1.49-3.amzn2023.0.3.noarch                                                                                                           5/13 
  Installing       : httpd-tools-2.4.65-1.amzn2023.0.2.x86_64                                                                                                       6/13 
  Installing       : libbrotli-1.0.9-4.amzn2023.0.2.x86_64                                                                                                          7/13 
  Running scriptlet: httpd-filesystem-2.4.65-1.amzn2023.0.2.noarch                                                                                                  8/13 
  Installing       : httpd-filesystem-2.4.65-1.amzn2023.0.2.noarch                                                                                                  8/13 
  Installing       : httpd-core-2.4.65-1.amzn2023.0.2.x86_64                                                                                                        9/13 
  Installing       : mod_http2-2.0.27-1.amzn2023.0.3.x86_64                                                                                                        10/13 
  Installing       : mod_lua-2.4.65-1.amzn2023.0.2.x86_64                                                                                                          11/13 
  Installing       : generic-logos-httpd-18.0.0-12.amzn2023.0.3.noarch                                                                                             12/13 
  Installing       : httpd-2.4.65-1.amzn2023.0.2.x86_64                                                                                                            13/13 
  Running scriptlet: httpd-2.4.65-1.amzn2023.0.2.x86_64                                                                                                            13/13 
  Verifying        : apr-1.7.5-1.amzn2023.0.4.x86_64                                                                                                                1/13 
  Verifying        : apr-util-1.6.3-1.amzn2023.0.2.x86_64                                                                                                           2/13 
  Verifying        : apr-util-lmdb-1.6.3-1.amzn2023.0.2.x86_64                                                                                                      3/13 
  Verifying        : apr-util-openssl-1.6.3-1.amzn2023.0.2.x86_64                                                                                                   4/13 
  Verifying        : generic-logos-httpd-18.0.0-12.amzn2023.0.3.noarch                                                                                              5/13 
  Verifying        : httpd-2.4.65-1.amzn2023.0.2.x86_64                                                                                                             6/13 
  Verifying        : httpd-core-2.4.65-1.amzn2023.0.2.x86_64                                                                                                        7/13 
  Verifying        : httpd-filesystem-2.4.65-1.amzn2023.0.2.noarch                                                                                                  8/13 
  Verifying        : httpd-tools-2.4.65-1.amzn2023.0.2.x86_64                                                                                                       9/13 
  Verifying        : libbrotli-1.0.9-4.amzn2023.0.2.x86_64                                                                                                         10/13 
  Verifying        : mailcap-2.1.49-3.amzn2023.0.3.noarch                                                                                                          11/13 
  Verifying        : mod_http2-2.0.27-1.amzn2023.0.3.x86_64                                                                                                        12/13 
  Verifying        : mod_lua-2.4.65-1.amzn2023.0.2.x86_64                                                                                                          13/13 

Installed:
  apr-1.7.5-1.amzn2023.0.4.x86_64                        apr-util-1.6.3-1.amzn2023.0.2.x86_64                        apr-util-lmdb-1.6.3-1.amzn2023.0.2.x86_64          
  apr-util-openssl-1.6.3-1.amzn2023.0.2.x86_64           generic-logos-httpd-18.0.0-12.amzn2023.0.3.noarch           httpd-2.4.65-1.amzn2023.0.2.x86_64                 
  httpd-core-2.4.65-1.amzn2023.0.2.x86_64                httpd-filesystem-2.4.65-1.amzn2023.0.2.noarch               httpd-tools-2.4.65-1.amzn2023.0.2.x86_64           
  libbrotli-1.0.9-4.amzn2023.0.2.x86_64                  mailcap-2.1.49-3.amzn2023.0.3.noarch                        mod_http2-2.0.27-1.amzn2023.0.3.x86_64             
  mod_lua-2.4.65-1.amzn2023.0.2.x86_64                  

Complete!
[dev1@ip-172-31-2-231 /]$ sudo yum install httpd
Last metadata expiration check: 0:00:14 ago on Sun Nov  9 07:13:52 2025.
Package httpd-2.4.65-1.amzn2023.0.2.x86_64 is already installed.
Dependencies resolved.
Nothing to do.
Complete!
[dev1@ip-172-31-2-231 /]$ systemctl start httpd
Failed to start httpd.service: Access denied
See system logs and 'systemctl status httpd.service' for details.
[dev1@ip-172-31-2-231 /]$ sudo systemctl start httpd
Sorry, user dev1 is not allowed to execute '/usr/bin/systemctl start httpd' as root on ip-172-31-2-231.ap-south-1.compute.internal.
[dev1@ip-172-31-2-231 /]$ exit
exit
[root@ip-172-31-2-231 /]# vi /etc/sudoers
[root@ip-172-31-2-231 /]# su dev1
[dev1@ip-172-31-2-231 /]$ whoami
dev1
[dev1@ip-172-31-2-231 /]$ 
[dev1@ip-172-31-2-231 /]$ 
[dev1@ip-172-31-2-231 /]$ sudo systemctl start httpd
[dev1@ip-172-31-2-231 /]$ sudo systemctl status httpd
Sorry, user dev1 is not allowed to execute '/usr/bin/systemctl status httpd' as root on ip-172-31-2-231.ap-south-1.compute.internal.
[dev1@ip-172-31-2-231 /]$ su dev2
Password: 
[dev2@ip-172-31-2-231 /]$ yum install httpd
Error: This command has to be run with superuser privileges (under the root user on most systems).
[dev2@ip-172-31-2-231 /]$ sudo yum install httpd
[sudo] password for dev2: 
Sorry, try again.
[sudo] password for dev2: 
dev2 is not in the sudoers file.
[dev2@ip-172-31-2-231 /]$ exit
exit
[dev1@ip-172-31-2-231 /]$ exit
exit
[root@ip-172-31-2-231 /]# whoami
root
[root@ip-172-31-2-231 /]# vi /etc/sudoers
[root@ip-172-31-2-231 /]# su dev2
[dev2@ip-172-31-2-231 /]$ 
[dev2@ip-172-31-2-231 /]$ 
[dev2@ip-172-31-2-231 /]$ 
[dev2@ip-172-31-2-231 /]$ 
[dev2@ip-172-31-2-231 /]$ 
[dev2@ip-172-31-2-231 /]$ whoami
dev2
[dev2@ip-172-31-2-231 /]$ yum install httpd
Error: This command has to be run with superuser privileges (under the root user on most systems).
[dev2@ip-172-31-2-231 /]$ sudo yum install httpd
Last metadata expiration check: 0:08:08 ago on Sun Nov  9 07:13:52 2025.
Package httpd-2.4.65-1.amzn2023.0.2.x86_64 is already installed.
Dependencies resolved.
Nothing to do.
Complete!
[dev2@ip-172-31-2-231 /]$ sudo yum^Cnstall httpd
[dev2@ip-172-31-2-231 /]$ id
uid=1004(dev2) gid=1004(devs) groups=1004(devs) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
[dev2@ip-172-31-2-231 /]$ su dev3
Password: 
[dev3@ip-172-31-2-231 /]$ 
[dev3@ip-172-31-2-231 /]$ 
[dev3@ip-172-31-2-231 /]$ sudo yum update httpd
Last metadata expiration check: 0:08:44 ago on Sun Nov  9 07:13:52 2025.
Dependencies resolved.
Nothing to do.
Complete!
[dev3@ip-172-31-2-231 /]$ exit
exit
[dev2@ip-172-31-2-231 /]$ exit
exit
[root@ip-172-31-2-231 /]# vi /etc/sudoers
[root@ip-172-31-2-231 /]# su dev2
[dev2@ip-172-31-2-231 /]$ systemctl stop httpd
Failed to stop httpd.service: Access denied
See system logs and 'systemctl status httpd.service' for details.
[dev2@ip-172-31-2-231 /]$ sudo systemctl stop httpd
[sudo] password for dev2: 
Sorry, user dev2 is not allowed to execute '/usr/bin/systemctl stop httpd' as root on ip-172-31-2-231.ap-south-1.compute.internal.
[dev2@ip-172-31-2-231 /]$ exit
exit
[root@ip-172-31-2-231 /]# vi /etc/sudoers
[root@ip-172-31-2-231 /]# su dev2
[dev2@ip-172-31-2-231 /]$ sudo systemctl stop httpd
[dev2@ip-172-31-2-231 /]$ exit
exit
[root@ip-172-31-2-231 /]# vi /etc/sudoers
[root@ip-172-31-2-231 /]# id ec2-user
uid=1000(ec2-user) gid=1000(ec2-user) groups=1000(ec2-user),4(adm),10(wheel),190(systemd-journal)
[root@ip-172-31-2-231 /]# exit
exit
[ec2-user@ip-172-31-2-231 ~]$ sudo yum install httpd
Last metadata expiration check: 0:13:40 ago on Sun Nov  9 07:13:52 2025.
Package httpd-2.4.65-1.amzn2023.0.2.x86_64 is already installed.
Dependencies resolved.
Nothing to do.
Complete!
[ec2-user@ip-172-31-2-231 ~]$ exit
logout
