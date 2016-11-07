adb root
adb shell am broadcast -a com.whereismywifeserver.intent.TEST --es sms_body "test from adb"
