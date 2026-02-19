# boot mode
if [ "$BOOTMODE" != true ]; then
  abort "! Please install via Magisk/KernelSU app only!"
fi

# space
ui_print " "

# var
UID=`id -u`
[ ! "$UID" ] && UID=0

# optionals
OPTIONALS=/data/media/"$UID"/optionals.prop
if [ ! -f $OPTIONALS ]; then
  touch $OPTIONALS
fi

# debug
if [ "`grep_prop debug.log $OPTIONALS`" == 1 ]; then
  ui_print "- The install log will contain detailed information"
  set -x
  ui_print " "
fi

# run
. $MODPATH/function.sh

# info
MODVER=`grep_prop version $MODPATH/module.prop`
MODVERCODE=`grep_prop versionCode $MODPATH/module.prop`
ui_print " ID=$MODID"
ui_print " Version=$MODVER"
ui_print " VersionCode=$MODVERCODE"
if [ "$KSU" == true ]; then
  ui_print " KSUVersion=$KSU_VER"
  ui_print " KSUVersionCode=$KSU_VER_CODE"
  ui_print " KSUKernelVersionCode=$KSU_KERNEL_VER_CODE"
else
  ui_print " MagiskVersion=$MAGISK_VER"
  ui_print " MagiskVersionCode=$MAGISK_VER_CODE"
fi
ui_print " "

# magisk
magisk_setup

# info
ui_print "- This is not a module,"
ui_print "  so this will not remain in module list."
ui_print "  Your mirror is mounted at:"
ui_print "  $MIRROR/"
ui_print "  You don't need to reboot."
ui_print "  Rebooting will remove mirror by this script"
ui_print "  automatically."
ui_print " "

# exit
ui_print "- Done"
rm -rf /data/adb/modules*/$MODID
exit





