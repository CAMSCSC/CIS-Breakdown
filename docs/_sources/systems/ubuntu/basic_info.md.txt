# 0 - Basic Information

Using the Ubuntu CIS benchmark requires a large amount of terminal usage.

The terminal is a window where commands can be sent, and where most actions in Linux occur. To open the terminal, search for `terminal` in the search bar, or press `Ctrl + alt + t`. This opens the terminal window, where you can type commands.

## Basic Commands:

### `man`
`man` allows you to view the manual for a command.
For example, to see the manual for `cat`, run `man cat`.
These manual pages can also be found online.

### `cd`
`cd` allows you to **c**hange the current **d**irectory. 
For example, if you are in the directory `/home`, and would like to go to `/home/Documents`, 
you can run:
```bash
cd /home/Documents
```

or

```bash
cd Documents
```

Typing `cd ..` moves you up a directory (e.g.: from `/home/Documents` to `/home`)

### `ls`
`ls` allows you to list the files in the current directory. See `man ls` for more information.

### `cat`
`cat` allows you to read a file. To use `cat`, type `cat` 
and the path of the file(s) you would like to read. 
These will be printed onto the console.

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

### `gedit`
`gedit` is another basic text editor. To use `gedit`, 
type `gedit` and then the path of a file (or the path of a new file).
For example, to edit `passwords.txt`, run:
```bash
gedit passwords.txt
```

This will open a new window with a text editor similar to notepad.
To save and close the file, press `Ctrl + S` or the save button and close the window.

```{admonition} Note
`gedit` also often requires `sudo` to edit files. See [`sudo`](./basic_info.md#sudo) for more information.
```

### `sudo`
`sudo`, which stands for **s**uper**u**ser **do**, gives a command a higher permission level. 
It is often required to work with sensitive files. 
To use `sudo`, type `sudo` and another command after it. 
This will ask for your password, which is hidden while you type it.

For example, to run `nano passwords.txt` with sudo, run:
```bash
sudo nano passwords.txt
```

### `bash`
`bash`, which stands for **b**ourne-**a**gain **sh**ell, runs a shell script.
Shell scripts end in `.sh` and contain a list of commands to be run.
These are often useful for automating tasks.

### `find`
The `find` command allows you to look for files matching a pattern.
For example, to find a file with the name `myfile.txt`, run `find -name myfile.txt`.
This will return all of the possible locations for `myfile.txt` in the current directory.