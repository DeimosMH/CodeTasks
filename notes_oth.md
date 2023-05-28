[toc]

# GIT

Merge all commits into one:

1. Run command

```
git rebase --root -i 
```

2. Then 'squash' all without first one

# DNS

Cloudflare with malware filter: 1.1.1.2, 1.0.0.2

Cloudflare with malware and adult content filter: 1.1.1.3,  1.0.0.3

https://blog.cloudflare.com/introducing-1-1-1-1-for-families/

# PI-HOLE (MIM ad block)

- install and go through config

```
curl -sSL https://install.pi-hole.net | bash
```

Remember password at the end!

Then: https://discourse.pi-hole.net/t/how-do-i-configure-my-devices-to-use-pi-hole-as-their-dns-server/245

- Router config DHCP: (gateway - IP_router, DNS - IP_PI_HOLE):
<img src=".oth_data\image-20230130040452828.png" alt="Image description" style="display: block; margin: auto; width: 100%; height: auto; border-radius: 8px;">

# SAMBASHARE (SAFE) - port 445

- Mount devices

```
lsblk

sudo mkdir /mnt/usb1
sudo mkdir /mnt/usb2

sudo mount /dev/sda1 /mnt/usb1
sudo mount /dev/sdb2 /mnt/usb2
```

- Install

```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install samba samba-common-bin
mkdir /home/pi/shared
sudo nano /etc/samba/smb.conf
```

- Configure (add under the `[global]` section)

```
encrypt passwords = yes
```

- Configure (add to the bottom)

```
[AudioVideo]
path = /mnt/usb1
writeable=Yes
create mask=0777
directory mask=0777
public=no

[Gry]
path = /mnt/usb2
writeable=Yes
create mask=0777
directory mask=0777
public=no
```

- Password for remote connection

```
sudo smbpasswd -a pi
sudo systemctl restart smbd
```

- Check host IP, than assigh static one in Router

```
hostname -I
```

## Make it safe - IP BAN

- Install

```
sudo apt-get install fail2ban
```

- Create `jail` for Samba

```
sudo nano /etc/fail2ban/jail.d/samba.conf
```

- Configure (write to created file)
  - maxretry is max login attempts
  - bantime = -1 - is indefinite time for attempt to login (default = 10 min)

```
[samba]
enabled = true
port = 139,445
filter = samba
logpath = /var/log/samba/log.%m
maxretry = 3
bantime = -1
```

- Restart service

```
sudo systemctl restart fail2ban
```

---

## Auto-device mount
```
/dev/<device_name> <mount_point> <filesystem_type> defaults 0 0

sudo sh -c "echo '/dev/sda1 /mnt/usb1 ntfs defaults 0 0' >> /etc/fstab"
sudo sh -c "echo '/dev/sdb2 /mnt/usb2 ntfs defaults 0 0' >> /etc/fstab"
```

# DISKPART

- list disk
- select disk 0
- clean
- create part pri
- active
- format fs=fat32 quick

# QEMU

## Windows

1. [Install](https://www.qemu.org/download/)
2. Create Environmental Variable with installation Path (short run: systempropertiesadvanced)
3. Use, eg:

```
qemu-img create -f qcow2 GarudaDragonized.img 50G

qemu-system-x86_64 -enable-kvm -cdrom garuda-dr460nized-gaming-linux-zen-220808.iso -boot menu=on -drive file=GarudaDragonized.img -m 4g
```

If error about kvm appear: uninstall Hyper-V, install [HAXM](https://github.com/intel/haxm/releases), and use command with 'hda' 'full iso path' '-accel' 'hax' :

```
qemu-system-x86_64 -hda C:\Users\Deimos\VM\Garuda\garuda-dr460nized-gaming-linux-zen-220808.iso -accel hax -boot menu=on -drive file=GarudaDragonized.img -m 4g -smp 8,sockets=2,cores=2,threads=2,maxcpus=8
```

```
qemu-system-x86_64 C:\Users\Deimos\VM\Garuda\garuda-dr460nized-gaming-linux-zen-220808.iso,format=raw,index=0,media=disk -boot menu=on -drive file=GarudaDragonized.img,format=raw,index=0,media=disk -m 4g -smp 8,sockets=2,cores=2,threads=2,maxcpus=8
```

```
qemu-system_x86_64 -hda archlinux-2022.08.05-x86_64.iso -accel hax -boot menu=on -drive file=Arch.iso
```

# OTH

## merge all md files

01_preface.md `<br>`
02_introduction.md`<br>`
03_why_markdown_is_useful.md`<br>`
04_limitations_of_markdown.md`<br>`
05_conclusions.md

You can merge them by doing executing this command within the same directory:

pandoc *.md > markdown_book.html
