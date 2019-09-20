# auto-reboot

Sometimes our device entered shutdown mode when user wanted to reboot device.

So I wrote this script to check whether this bug is fixed or not.

If our device enters shutdown mode, I will look at its monitor.
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
