# auto-reboot

Sometimes our device will enter shutdown mode when user wants to reboot device.

So I wrote this script to check whether this bug is fixed or not.

If our device has entered shutdown mode, I will look its monitor.
It can tell me how many times that our device reboots successfully.


### Debug message
```
    read PreTime Count < $Log
    Count=$((Count+1))
    echo $PreTime $Count > $Log

    echo "$PreTime $NowTime ($Count)"
    echo "Reboot now"
    reboot
```
