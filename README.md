# Template prepare for work with vmware cloud-init datasource
```
[Web Browser] Download OVA: https://cloud-images.ubuntu.com/
[VC UI] Deploy from OVF, accept defaults (except disk provisioning, use Thin Provisioning).
[VC UI] Edit Settings / VM Options / Boot Options / Boot Delay = 10000ms.
[VC UI] Open VM Console.
[VM Console] Power On VM.
[VM Console] Hold Shift on BIOS screen (to force GRUB to display menu).
[VM Console] Select Advanced Options for Ubuntu.
[VM Console] Select latest kernel version with "(recovery mode)" at the end.
[VM Console] Select "root / Drop to root shell prompt"
[VM Console] Press Enter for maintenance
[VM Console] # dpkg-reconfigure cloud-init
[VM Console] Deselect everything except VMware and None
[VM Console] # cloud-init clean
[VM Console] # shutdown -h now
[VC UI] Edit Settings / VM Options / Boot Options / Boot Delay = 0ms.
[VC UI] Convert to template
```