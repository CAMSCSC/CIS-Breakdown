# 1.1 Filesystem Configuration

## 1.1.1 Disable unused filesystems

### Disable filesystem mounting

Disable the mounting of cramfs, freevxfs, jffs2, hfs, hfsplus, and udf filesystems. These filesystems are usually unnecessary, and can provide additional entry points for attackers.

#### Vulnerability Information

The vulnerable filesystems are:

- cramfs: stores small-footprint read-only files
- freevxfs: free version of [vxfs] (for Veritas/HP-UX)
- jffs2: log filesystem used in flash memory devices
- hfs: hierarchical filesystem used to mount MacOS filesystems
- hfsplus: newer version of hfs
- udf: universal disk format, used for writing DVDs

#### Auditing and Remediation

The [modprobe] program can be used to check if these filesystem modules are installed.

```bash
modprobe -n -v cramfs | grep -E '(cramfs|install)'
modprobe -n -v freevxfs | grep -E '(freevxfs|install)'
# etc...
```

To disable these filesystems in the current session, use [rmmod].

```bash
rmmod cramfs
rmmod freevxfs
# etc...
```

To disable these filesystems permanently, add/modify `install` lines in [modprobe.d], the configuration directory for modprobe.

Add to `/etc/modprobe.d` a file (e.g.: `/etc/modprobe.d/cramfs.conf`) containing:

```
install FILESYSTEM_TO_DISABLE /bin/true
```

On system startup, this replaces the command to run the filesystem with `/bin/true`, a placeholder command that returns `True` for success.

### fstab Configuration

#### Configure /tmp

`/tmp` (the temporary directory) should be configured to be its own filesystem, using tmpfs, with the options `nodev`, `nosuid`, and `noexec` on.

##### Option 1: Modify fstab

1. Modify `/etc/fstab` to contain:
```linuxconfig
tmpfs /tmp tmpfs defaults,rw,nosuid,nodev,noexec,relatime 0 0
```
By default, the size will be 50% of ram, but it can also be modified using the `size` parameter. For example:
```linuxconfig
tmpfs /tmp tmpfs rw,noexec,nodev,nosuid,size=2G 0 0
```

```{note} 
The columns in fstab do not have to be aligned, but can be aligned with: `column -t /etc/fstab`. (Found in [this post](https://unix.stackexchange.com/questions/96037/how-to-align-fstab-entries-easily).)
```

##### Option 2: Use tmp.mount

1. Delete the entry for /tmp in `/etc/fstab`, as fstab overrides tmp.mount.
2. Edit `/etc/systemd/system/tmp.mount` to be:
```linuxconfig
[Mount]
What=tmpfs
Where=/tmp
Type=tmpfs
Options=mode=1777,strictatime,nosuid,nodev,noexec
```
3. Reload systemd: `systemctl daemon-reload`
4. Enable tmp.mount `systemctl --now enable tmp.mount`

[vxfs]: https://en.wikipedia.org/wiki/Veritas_File_System
[modprobe]: https://linux.die.net/man/8/modprobe
[rmmod]: https://linux.die.net/man/8/rmmod
[modprobe.d]: https://man7.org/linux/man-pages/man5/modprobe.d.5.html#COMMANDS

#### Configure /dev/shm

This is mostly identical to configuring `/tmp`. `/dev/shm` is a shared memory directory.

In `/etc/fstab`, add:
```linuxconfig
tmpfs /dev/shm tmpfs defaults,noexec,nodev,nosuid,seclabel 0 0
```

Then remount `/dev/shm` by running:
```bash
mount -o remount,noexec,nodev,nosuid /dev/shm
```

#### Move directories to separate partitions

These steps apply to `/var`, `/var/tmp`, `/var/log`, and `/var/log/audit`.

These directories should be mounted to separate partitions to avoid resource exhaustion.

Check if they are mounted by running:
```bash
findmnt /var
findmnt /var/tmp
```

If this does not show that `/var` or `/var/tmp` is mounted, modify `/etc/fstab` to mount it on its own partition.

`/var/tmp` and any removable media partitions should also have the noexec, nodev, and nosuid properties set.

