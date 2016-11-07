@echo off
rem delete file if exists
set FileName="external.db"
if exist %FileName% del /f %FileName%
if exist %FileName% exit 1

rem pull external db file from the phone
adb root
adb pull /data/data/com.android.providers.media/databases/external.db

rem open the external db file with navicat for sqlite
set NAVICAT_PATH=D:\Program Files\PremiumSoft\Navicat for SQLite\navicat.exe;
set PATH=%PATH%;%NAVICAT_PATH%
navicat.exe external.db

rem delete the db file
rem if exist %FileName% del /f %FileName%
