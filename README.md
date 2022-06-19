# Zerobin data cleanup/retention
Since self hosted instances of **[0bin](https://github.com/Tygs/0bin)** don't have a way to disable the ***Never expire*** option, I decided to create this litlle shell script.  
This will remove any pastes older than the value specified in ***[theDays](https://github.com/PeGaSuS-Coder/zerobin-retention/blob/main/zerobin_retention.sh#L11)*** variable (defaults to 7 days) and also delete any empty folders. 

## How to use
- Download the script to your `HOME` directory with:  
```
wget https://raw.githubusercontent.com/PeGaSuS-Coder/zerobin-retention/main/zerobin_retention.sh
```
- Make the script executable with:
```
chmod +x zerobin_retention.sh
```
- Add the following to your crontab (this will execute the script every day at midnight):
```
0 0 * * * $HOME/zerobin_retention.sh >/dev/null 2>&1
```

## NOTE
This script has been tested on Ubuntu 18.04 and newer and with a non-privileged user running the 0bin instance.  
Edit the paths in the `zerobin_retention.sh` script to fit your needs.

***Enjoy!***
