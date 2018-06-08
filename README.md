# auto-reboot

Sometimes our device will enter shutdown mode when user wants to reboot device.

So I wrote this script to check whether this bug is fixed or not.

If the time doesn't match now time, it means our device has entered shutdown mode.


### Debug message
I can see how many times that our device reboots successfully.
```
    read PreTime Count < $Log
    Count=$((Count+1))
    echo $PreTime $Count > $Log

    echo "$PreTime $NowTime ($Count)"
    echo "Reboot now"
    reboot
```
