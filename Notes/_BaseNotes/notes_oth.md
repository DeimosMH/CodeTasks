[toc]

# Oth Notes

## GIT

Merge all commits into one:

1. Run command

    ```sh
    git rebase --root -i 
    ```

2. Then `squash` all without first one

## DNS

[Cloudflare](https://blog.cloudflare.com/introducing-1-1-1-1-for-families/)

- Cloudflare with malware filter: 1.1.1.2, 1.0.0.2
- Cloudflare with malware and adult content filter: 1.1.1.3,  1.0.0.3

## PI-HOLE (MIM ad block)

1. Install and go through config

    ```sh
    curl -sSL https://install.pi-hole.net | bash
    ```

2. Remember password at the end!
3. Then follow official [instructions](https://discourse.pi-hole.net/t/how-do-i-configure-my-devices-to-use-pi-hole-as-their-dns-server/245)

- Router config DHCP example: (gateway - IP_router, DNS - IP_PI_HOLE):

<img src="assets\notes_oth_RouterDHCPconfig.png" alt="Image description"
style="display: block; margin: auto; width: 60%; height: auto; border-radius: 8px;">

## SAMBASHARE (SAFE) - port 445

1. Mount devices

    ```sh
    lsblk

    sudo mkdir /mnt/usb1
    sudo mkdir /mnt/usb2

    sudo mount /dev/sda1 /mnt/usb1
    sudo mount /dev/sdb2 /mnt/usb2
    ```

2. Install

    ```sh
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get install samba samba-common-bin
    mkdir /home/pi/shared
    sudo nano /etc/samba/smb.conf
    ```

3. Configure (add under the `[global]` section)

    ```sh
    encrypt passwords = yes
    ```

4. Configure (add to the bottom)

    ```sh
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

5. Set password for remote connection

    ```sh
    sudo smbpasswd -a pi
    sudo systemctl restart smbd
    ```

6. Check host IP, than assigh static one in Router

    ```sh
    hostname -I
    ```

7. Make it safe - add IP BAN (if Routing)

    7.1 Install

      ```sh
      sudo apt-get install fail2ban
      ```

    7.2 Create `jail` for Samba

      ```sh
      sudo nano /etc/fail2ban/jail.d/samba.conf
      ```

    7.3 Configure (write to created file)
      - maxretry is max login attempts
      - bantime = -1 - is indefinite time for attempt to login (default = 10 min)

      ```sh
      [samba]
      enabled = true
      port = 139,445
      filter = samba
      logpath = /var/log/samba/log.%m
      maxretry = 3
      bantime = -1
      ```

    7.4 Restart service

      ```sh
      sudo systemctl restart fail2ban
      ```

---

### Auto-device mount

```sh
/dev/<device_name> <mount_point> <filesystem_type> defaults 0 0

sudo sh -c "echo '/dev/sda1 /mnt/usb1 ntfs defaults 0 0' >> /etc/fstab"
sudo sh -c "echo '/dev/sdb2 /mnt/usb2 ntfs defaults 0 0' >> /etc/fstab"
```

## DISKPART

- list disk
- select disk 0
- clean
- create part pri
- active
- format fs=fat32 quick

## QEMU

### Windows

1. [Install](https://www.qemu.org/download/)
2. Create Environmental Variable with installation Path (short run: systempropertiesadvanced)
3. Use, eg:

    ```sh
    qemu-img create -f qcow2 GarudaDragonized.img 50G

    qemu-system-x86_64 -enable-kvm -cdrom garuda-dr460nized-gaming-linux-zen-220808.iso -boot menu=on -drive file=GarudaDragonized.img -m 4g
    ```

    If error about kvm appear: uninstall Hyper-V, install:
    [HAXM](https://github.com/intel/haxm/releases), and use command with: `hda` `full iso path` `-accel` `hax`

    ```sh
    qemu-system-x86_64 -hda C:\Users\Deimos\VM\Garuda\garuda-dr460nized-gaming-linux-zen-220808.iso -accel hax -boot menu=on -drive file=GarudaDragonized.img -m 4g -smp 8,sockets=2,cores=2,threads=2,maxcpus=8
    ```

    ```sh
    qemu-system-x86_64 C:\Users\Deimos\VM\Garuda\garuda-dr460nized-gaming-linux-zen-220808.iso,format=raw,index=0,media=disk -boot menu=on -drive file=GarudaDragonized.img,format=raw,index=0,media=disk -m 4g -smp 8,sockets=2,cores=2,threads=2,maxcpus=8
    ```

    ```sh
    qemu-system_x86_64 -hda archlinux-2022.08.05-x86_64.iso -accel hax -boot menu=on -drive file=Arch.iso
    ```

## NVChad

### Installation - Linux (Ubuntu)

1. Install fonts

    ```sh
    mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
    ```

2. Install `nvim` > 9.0

    ```sh
    sudo snap install nvim --classic
    ```

3. Install `nvchad`

    ```sh
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 
    ```

4. Run `nvim` and wait for packages to install. For configuration query set `no`.

### Installation - Windows

NVChad

### Cheat sheet

`Space` + `c` + `h`
`Space` - hold for available commands

### Theming

`Space` + `t` + `h`

### Syntax highlighting

Installation fo language

```sh
:TSInstall <language name>
```

### File tree (nvim tree)

`Ctrl` + `n`

`m` - marks file
`a` - create new file
`c` - copy
`p` - paste
`r` - rename

### File navigation

`Space` + `f` + `f` - search all files
`Space` + `f` + `b` - search open file

### Window navigation

`ctrl` + `j`
`ctrl` + `i`
`ctrl` + `k`
`ctrl` + `l`

`:vsp` - vertical split
`:sp` - split

### Buffer tab

`tab`
`shift + tab`

### Terminal

`Space` + `h` - open horizontal window
`Space` + `v` - open vertical window

## OTH

### merge all md files

01_preface.md
02_introduction.md
03_why_markdown_is_useful.md
04_limitations_of_markdown.md
05_conclusions.md

You can merge them by doing executing this command within the same directory:

pandoc *.md > markdown_book.html
