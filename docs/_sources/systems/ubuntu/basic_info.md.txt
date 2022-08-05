# 0 - Basic Information

Using the Ubuntu CIS benchmark requires a large amount of terminal usage.

The terminal is a window where commands can be sent, and where most actions in Linux occur. To open the terminal, search for `terminal` in the search bar, or press `Ctrl + alt + t`. This opens the terminal window, where you can type commands.

## Basic Commands:

### `grep`
`grep` allows you to filter text. 
To use `grep`, type `grep`, the pattern you would like to match, 
and then the path of the file you would like to filter.
For example, to filter for the word `ubuntu` in the file `ubuntu.txt`, run
```bash
grep ubuntu ubuntu.txt.
```

`grep` can also be used to filter the output of another command. 
To do this, type the other command, and then ` | grep PATTERN` after it, 
replacing `PATTERN` with your pattern. 
For example, to filter the output of `cat test.sh` for the word `test`, run 
```bash
cat test.sh | grep test.
```

### `cat`
`cat` allows you to read a file. To use `cat`, type `cat` 
and the path of the file(s) you would like to read. 
These will be printed onto the console.

### `nano`
`nano` is a basic text editor. To use `nano`, 
type `nano` and then the path of the file (or the path of a new file). 
For example, to edit `passwords.txt`, run:
```bash
nano passwords.txt
```

This will turn the terminal into a basic GUI. 
To edit the file, move around the cursor with the arrow keys,
and type in or delete the text you want.

To save and exit, press `Ctrl + x`. 
This will cause `nano` to ask whether or not to save, by entering `Y` or `N`.
Then `nano` will ask for a file to save to, which defaults to the one that was opened.

```{admonition} Note
`nano` often requires `sudo` to edit files. See [`sudo`](./basic_info.md#sudo) for more information.
```

### `sudo`
`sudo`, which stands for SuperUser DO, gives a command a higher permission level. 
It is often required to work with sensitive files. 
To use `sudo`, type `sudo` and another command after it. 
This will ask for your password, which is hidden while you type it.

For example, to run `nano passwords.txt` with sudo, run:
```bash
sudo nano passwords.txt
```

