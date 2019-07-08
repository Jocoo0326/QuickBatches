@echo on
adb shell uiautomator dump /data/local/tmp/uidump.xml



adb pull /data/local/tmp/uidump.xml



adb shell rm /data/local/tmp/uidump.xml

pause