# Autosave

Autosave a document opened by App X every Y time.

# Application 

This script is motivated by the fact that there is no auto-saving annotation choice in [Okular](https://okular.kde.org/) and it can sometimes cause annotation lost when system break, or some sync issue when I annotate the document on some other devices.

# How to use it

`./autosave.sh  Okular  5m`

Meaning: autosave an applicate with name including Okular every 5 minutes.

# Links about how I write it

1. [How to Run or Repeat a Linux Command Every X Seconds Forever](https://www.tecmint.com/run-repeat-linux-command-every-x-seconds/)

```bash
while true
do
    echo "Hi"
    sleep 1
done
```

2. [Command to simulate keyboard input](https://unix.stackexchange.com/questions/267704/command-to-simulate-keyboard-input)

```shell
xdotool key ctrl+s
```

3. [Detecting currently active window](https://superuser.com/questions/382616/detecting-currently-active-window)

```shell
xdotool getwindowfocus getwindowname
```

4. [How to Start Linux Command in Background and Detach Process in Terminal](https://www.tecmint.com/run-linux-command-process-in-background-detach-process/)

```
nohup
```

5. [nohup: ignoring input and redirecting stderr to stdout](https://unix.stackexchange.com/questions/105840/nohup-ignoring-input-and-redirecting-stderr-to-stdout)
5. [Add #!/bin/bash](https://stackoverflow.com/questions/5725296/difference-between-sh-and-bash)
5. Deliverable:

```
nohup ./autosave.sh Okular 5m > output.out 2>&1 &
```

Caveat:

- I had one panic time when the terminal freezes :) [LINUX - How to unfreeze after accidentally pressing Ctrl-S in a terminal-Learn in 30 Sec from Microsoft Awarded MVP](https://www.wikitechy.com/technology/unfreeze-accidentally-pressing-ctrl-s-terminal/)