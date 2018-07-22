# Linux Mint 19 @ Lenovo X1 Carbon 2018 (20KH)

## Hardware Specs

[Output](inxi.txt) of `inxi -F`

[Kernel Boot Log](dmesg.txt)

* IPS FHD Panel: `AUO B140HAN03.1`
* Lenovo NVM SSD: `LENSE20512GMSP34MEAT2TA`

## BIOS Updates

* Download latest [BIOS images](https://pcsupport.lenovo.com/de/en/products/LAPTOPS-AND-NETBOOKS/THINKPAD-X-SERIES-LAPTOPS/THINKPAD-X1-CARBON-6TH-GEN-TYPE-20KH-20KG/downloads/DS502282) - I am using `1.25`.
* Use [eltorino](https://aur.archlinux.org/packages/geteltorito/) 
```
geteltorito -o x1c2018-125.img n23ur08w.iso
sudo dd if=x1c2018-125.img of=/dev/sdb bs=512K
```
* Reboot from USB and follow instructions

### BIOS Settings



## Installation

## Software Fixes

* CPU throttling fix + undervolting using this [/etc/rc.local](rc.local)
* Put a [script](trackpad) in `/lib/systemd/system-sleep/` to reinitialize the touch pad after resume from suspend or else the track point stops working

## Hardware Tweaks

## Benchmarks

Current best results
* 2T/sec read / 1T/sec write (sequential, 10M chunks)
* Geekbench4, performance governor - Single Core: 5250 / Multi Core: 17600
* Geekbench4, powersave governor - Single Core: 3250 / Multi Core: 11500
* Unigine Heaven, Quality "High", 1024x576: FPS 41.2 (1039) / 8.4min / 82.3max


### Idle Power Consumption

Scenario
* Minimal brightness 
* NFC & card reader disabled in BIOS 
* wireless/sound enabled, BT disabled
* thunderbolt enabled (with BIOS thunderbolt power management enabled, too)
* mate desktop loaded without running apps

Use cases
* 2.5W - wget download has finished, closing firefox
* 3.5W - running a wget download
* 4.5W - additionally starting firefox using three tabs
* 5.5W - watching youtube fhd full screen

## Sources

https://wiki.archlinux.org/index.php/Lenovo_ThinkPad_X1_Carbon_(Gen_6)

https://www.thinkwiki.org/wiki/Category:X1_Carbon_(6th_Gen)

https://delta-xi.net/#056

https://mensfeld.pl/2018/05/lenovo-thinkpad-x1-carbon-6th-gen-2018-ubuntu-18-04-tweaks/

https://www.reddit.com/r/thinkpad/comments/8rt1fr/running_linux_on_the_x1_carbon_6th_generation/

https://www.reddit.com/r/thinkpad/comments/861360/x1_carbon_6th_gen_seems_to_be_bios_locked_to_33w/

https://www.reddit.com/r/thinkpad/comments/8aqy5g/x1c6_on_linux_idle_29w_real_battery_life_on_light/
