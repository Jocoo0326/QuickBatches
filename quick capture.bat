@echo off
cls

:: screen capture
adb shell screencap -p /sdcard/screen.png

:: get current time string
set hh=%time:~0,2%
IF %hh% LSS 10 (
  set hh=0%hh:~1,1%
)

set Timestamp=%date:~0,4%%date:~5,2%%date:~8,2%%hh%%time:~3,2%%time:~6,2%%time:~9,2%

:: pull the capture image from the phone
adb pull /sdcard/screen.png %Timestamp%.png

:: remove the capture iamge in the phone
adb shell rm /sdcard/screen.png
