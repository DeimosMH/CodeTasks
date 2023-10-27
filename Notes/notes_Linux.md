# Linux

## Installation

### Kernel

`linux-image-uc-generic-hwe-22.04`: According to the Ubuntu Wiki, the `uc` in the kernel name stands for Unattended Upgrades (or sometimes called Unattended-upgrades).
This means that the kernel is configured to automatically install updates, including security updates, without user interaction. The `hwe` stands for
Hardware Enablement, which means this kernel has backported hardware support from newer kernels. This could be beneficial if you're looking for a kernel
that can automatically install updates and has backported hardware support.

After installation use command

```sh
sudo update-grub
```

Zen Kernel: This is a long-term support (LTS) kernel for Ubuntu that is optimized for desktop usage. It includes patches for improved power management
and system responsiveness. You can install it from the Zen Kernel PPA by running the following commands:

```sh
   sudo add-apt-repository ppa:zen-kernel/zen-kernel
   sudo apt-get update
   sudo apt-get install linux-zen
```

Liquorix Kernel: This is another LTS kernel that is optimized for desktop use. It includes patches for improved responsiveness and power management.
You can install it from the Liquorix PPA by running the following commands:

```sh
   sudo add-apt-repository ppa:damentz/liquorix && sudo apt-get update
   sudo apt-get install linux-image-liquorix-amd64
```

XanMod Kernel: This is a high-performance kernel that includes patches for improved CPU and network performance. You can install it from the XanMod
PPA by running the following commands:

```sh
   sudo add-apt-repository ppa:xanmod/stable
   sudo apt-get update
   sudo apt-get install linux-xanmod-generic
```

Beryllium Kernel: This is a low-latency kernel that is optimized for real-time applications. You can install it from the Beryllium PPA by running the
following commands:

```sh
   sudo add-apt-repository ppa:beryllium/ppa
   sudo apt-get update
   sudo apt-get install linux-image-beryllium-amd64
```

### Firmware

Possible missing firmware /lib/firmware ... problem

```sh
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install --reinstall linux-firmware
```

### Corruption

To check for file system corruption on the entire Ubuntu/Debian OS, you can use the `fsck` command-line utility. `fsck` (file system consistency check)
allows you to perform consistency checks and interactive repairs on one or more Linux file systems linuxize.com.

Before using `fsck`, it's important to note that you should avoid running it on a mounted file system to prevent additional damages ubuntumint.com.
If you need to check the root file system, you should boot into recovery mode or a live CD/USB first.

Here's a general step-by-step guide on how to use fsck:

1. Identify the file system partition using the `fdisk -l` command.
2. Make sure the file system partition is unmounted using the `umount` command.
3. Run `fsck` command on the unmounted file system. If you want `fsck` to automatically fix any detected errors without asking for your confirmation
each time, use the `-y` option: `sudo fsck -y /dev/sdb3`.
4. If the file system is not automatically mounted back online, mount it using the `mount` command ubuntumint.com.

You'll want to repeat these steps for each file system partition you wish to check.

In the commands above, replace `/dev/sdb3` with the path to the file system partition you want to check. You can find the paths to your file system
partitions by running the fdisk `-l` command.

Remember that `fsck` is a powerful tool, and it can potentially cause data loss if used improperly. Always make sure to back up any important data
before running `fsck`, especially with the `-y` option.
