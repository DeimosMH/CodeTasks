# GIT
Merge all commits into one:

1. Run command

```
git rebase --root -i 
```
2. Then 'squash' all without first one 

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

qemu-system-x86_64 C:\Users\Deimos\VM\Garuda\garuda-dr460nized-gaming-linux-zen-220808.iso,format=raw,index=0,media=disk -boot menu=on -drive file=GarudaDragonized.img,format=raw,index=0,media=disk -m 4g -smp 8,sockets=2,cores=2,threads=2,maxcpus=8

qemu-system-x86_64 -hda archlinux-2022.08.05-x86_64.iso -accel hax -boot menu=on -drive file=Arch.iso
```

