# Linux Mint 19 @ Lenovo X1 Carbon 2018 (20KH)

## Hardware Specs

[Output](inxi.txt) of `inxi -F`

[Kernel Boot Log](dmesg.txt)

## BIOS Updates

* Download latest [BIOS images](https://pcsupport.lenovo.com/de/en/products/LAPTOPS-AND-NETBOOKS/THINKPAD-X-SERIES-LAPTOPS/THINKPAD-X1-CARBON-6TH-GEN-TYPE-20KH-20KG/downloads/DS502282) - I am using `1.25`.
* Use [eltorino](https://aur.archlinux.org/packages/geteltorito/) 
```
geteltorito -o x1c2018-122.img n23ur06w.iso
sudo dd if=x1c2018-122.img of=/dev/sdX bs=512K
```
* Reboot from USB and follow instructions

### BIOS Settings



## Installation

## Software Fixes

## Hardware Tweaks

## Benchmarks

Current best results

### Idle Power Consumption

Scenario
* Minimal brightness 
* Bluetooth & NFC & card reader disabled in BIOS 
* wireless/sound enabled
* thunderbolt enabled (with BIOS thunderbolt power management enabled, too)
* mate desktop loaded without running apps

User story
* 3.5W - running a wget download
* 4.5W - additionally starting firefox using three tabs
* 2.5W - wget download has finished, closing firefox

**3.9W on average**

```
stefan@melisandre:~/word2vec$ sudo powerstat
Device is not discharging, cannot measure power usage.
stefan@melisandre:~/word2vec$ sudo powerstat
Running for 300.0 seconds (30 samples at 10.0 second intervals).
Power measurements will start in 180 seconds time.

  Time    User  Nice   Sys  Idle    IO  Run Ctxt/s  IRQ/s Fork Exec Exit  Watts
17:15:53   0.1   0.0   0.2  99.7   0.0    1    535    274    3    3    3   3.56 
17:16:03   0.1   0.0   0.1  99.8   0.0    1    485    238    0    0    0   3.55 
17:16:13   0.1   0.0   0.2  99.7   0.0    1    516    259    0    0    0   3.55 
17:16:23   0.1   0.0   0.2  99.8   0.0    1    608    306    2    0    2   3.55 
17:16:33   0.1   0.0   0.2  99.7   0.0    1    588    290    0    0    0   3.55 
17:16:43   0.3   0.0   0.6  99.1   0.0    1   1062    450    6    3    5   3.55 
17:16:53   0.2   0.0   0.2  99.5   0.0    1    706    299    0    0    0   3.56 
17:17:03   0.2   0.0   0.4  99.4   0.1    1    879    370    3    2    6   4.20 
17:17:13   0.3   0.0   0.5  99.2   0.0    1   1030    433    2    0    0   4.26 
17:17:23   0.6   0.0   1.3  98.1   0.0    1   2035    876    0    0    1   4.50 
17:17:33   0.5   0.0   0.5  99.0   0.0    1    990    426    0    0    0   4.57 
17:17:43  14.0   0.1   3.0  82.9   0.0    1   7911   4352  222   10   58   5.32 
17:17:53   5.7   0.0   1.4  92.8   0.0    2   2954   1875   10    8   16   5.75 
17:18:03   2.8   0.0   0.8  96.3   0.0    1   2089    882    2    0    1   5.08 
17:18:13   1.9   0.0   0.6  97.5   0.0    2   1509    511    0    0    4   4.59 
17:18:23   2.2   0.0   1.1  96.6   0.1    2   2333    934   10    8   13   4.34 
17:18:33   2.5   0.0   1.2  96.3   0.1    3   2459   1106    9    3  158   4.63 
17:18:43   0.7   0.0   0.7  98.6   0.0    1   1650    631    8    6    7   4.85 
17:18:53   0.2   0.0   0.7  99.1   0.0    1   1155    497   11    8   12   4.49 
17:19:03   0.1   0.0   0.3  99.5   0.0    1    850    368    0    0    1   4.07 
17:19:13   0.1   0.0   0.3  99.6   0.0    1    523    234    0    0    0   3.78 
17:19:23   0.1   0.0   0.5  99.4   0.0    1   1082    457    0    0    0   3.61 
17:19:33   0.5   0.0   0.9  98.6   0.0    1   1502    627    6    3    7   3.78 
17:19:43   0.3   0.0   0.3  99.4   0.0    1    436    214    0    0    0   3.83 
17:19:53   0.1   0.0   0.1  99.7   0.0    1    140     83    8    6    8   3.45 
17:20:03   0.0   0.0   0.1  99.9   0.0    1     93     68    5    5    5   3.23 
17:20:13   0.0   0.0   0.0  99.9   0.0    1     48     31    0    0    0   2.85 
17:20:23   0.0   0.0   0.0  99.9   0.0    1     65     40    0    0    0   2.60 
17:20:33   0.0   0.0   0.0  99.9   0.0    1     54     43    5    5    5   2.56 
17:20:43   0.0   0.0   0.0  99.9   0.0    1     68     42    0    0    0   2.42 
-------- ----- ----- ----- ----- ----- ---- ------ ------ ---- ---- ---- ------ 
 Average   1.1   0.0   0.6  98.3   0.0  1.2 1211.9  573.9 10.4  2.3 10.4   3.92 
 GeoMean   0.3   0.0   0.3  98.2   0.0  1.1  650.3  316.0  0.0  0.0  0.0   3.84 
  StdDev   2.7   0.0   0.6   3.2   0.0  0.5 1462.7  799.0 39.5  3.1 29.4   0.79 
-------- ----- ----- ----- ----- ----- ---- ------ ------ ---- ---- ---- ------ 
 Minimum   0.0   0.0   0.0  82.9   0.0  1.0   47.7   31.2  0.0  0.0  0.0   2.42 
 Maximum  14.0   0.1   3.0  99.9   0.1  3.0 7911.2 4352.0 222.0 10.0 158.0   5.75 
-------- ----- ----- ----- ----- ----- ---- ------ ------ ---- ---- ---- ------ 
Summary:
System:   3.92 Watts on average with standard deviation 0.79
```

## Sources

https://wiki.archlinux.org/index.php/Lenovo_ThinkPad_X1_Carbon_(Gen_6)

https://www.thinkwiki.org/wiki/Category:X1_Carbon_(6th_Gen)

https://delta-xi.net/#056

https://mensfeld.pl/2018/05/lenovo-thinkpad-x1-carbon-6th-gen-2018-ubuntu-18-04-tweaks/

https://www.reddit.com/r/thinkpad/comments/8rt1fr/running_linux_on_the_x1_carbon_6th_generation/

https://www.reddit.com/r/thinkpad/comments/861360/x1_carbon_6th_gen_seems_to_be_bios_locked_to_33w/

https://www.reddit.com/r/thinkpad/comments/8aqy5g/x1c6_on_linux_idle_29w_real_battery_life_on_light/
