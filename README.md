# Mount Mirror Magisk Script

## Descriptions
- This is not a module, so this will not remain in module list.
- Mount mirror (unmodified) partition of /system, /vendor, /product, /system_ext, /odm, /my_product, and /apex/\* in Magisk or KernelSU or Kitsune Mask or Apatch.
- You can also use this as the first step to fix issues before installing any old Magisk modules that depend on mirror detections due to the new version of Magisk removing mirror mounts.
- Mirror is the real partitions that are not affected by modules nor magic mount, so you can modify your system files there directly without any issues.
- WARNING!!! Modifiying real system files directly in mirror will sometimes trigger Play Integrity/SafetyNet failure.

## Changelog

v0.4
- Exclude /apex/sharedlibs

v0.3
- Mount mirror /apex/\*

v0.2
- Abort installation if fail to mount mirror system

v0.1
- Initial release

## Screenshot
https://t.me/androidryukimodsdiscussions/241679

## Requirements
Magisk or Kitsune Mask or KernelSU or Apatch installed

## Installation Guide & Download Link
Install this script https://github.com/reiryuki/Mount-Mirror-Magisk-Script via Magisk app or KernelSU app or Kitsune Mask app or Apatch app only. (Does not require reboot. Rebooting will remove mirrors automatically).

## Optionals
Global: https://t.me/ryukinotes/35

## Troubleshootings
Global: https://t.me/ryukinotes/34

## Support & Bug Report
- https://t.me/ryukinotes/54
- If you don't do above, issues will be closed immediately

## Credits and Contributors
- @HuskyDG
- https://t.me/androidryukimodsdiscussions
- https://t.me/androidappsportdevelopment

## Sponsors
https://t.me/ryukinotes/25


