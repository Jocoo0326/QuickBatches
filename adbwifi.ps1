$ip = (adb shell ifconfig wlan0 | grep 'inet addr:' | cut -d: -f2 | awk '{print $1;}')

adb tcpip 5555

adb connect ($ip + ":5555")
