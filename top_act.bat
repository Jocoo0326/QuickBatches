@echo off

adb shell dumpsys window windows | findstr mFocusedApp
