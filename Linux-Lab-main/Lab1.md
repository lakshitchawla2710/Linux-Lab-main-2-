# Linux Basic Commands

## ✅ 1. **Navigation Commands**

### `pwd` – Print Working Directory

Shows the current location in the filesystem.

```bash
pwd
```

📌 Output example:

```
/home/lakshit-chawla/Downloads/Linux-Lab-main(2)
```
![image](./images/pwd.png)

---

### `ls` – List Directory Contents

Lists files and folders in the current directory.

```bash
ls
```

* `ls -l` → Detailed list (permissions, size, date)
* `ls -a` → Shows hidden files (those starting with `.`)
* `ls -la` → Combined

![image](./images/ls.png)
---

### `cd` – Change Directory

Moves into a directory.

```bash
cd folder_name
```

Examples:

```bash
cd Documents        # Go to Documents
cd ..               # Go up one level
cd /                # Go to root
cd ~                # Go to home directory
```
![image](./images/cd.png)
---

## ✅ 2. **File and Directory Management**

### `mkdir` – Make Directory

Creates a new folder.

```bash
mkdir new_folder
```
![image](./images/mkdir.png)
---

### `touch` – Create File

Creates an empty file.

```bash
touch file.txt
```
![image](./images/touchfile.png)
---

### `cp` – Copy Files or Directories

```bash
cp source.txt destination.txt
```
![image](./images/ChatGPT%20Image%20Sep%2010,%202025,%2009_02_34%20PM.png)

* Copy folder:)

```bash
cp -r folder1 folder2
```

---

### `mv` – Move or Rename Files

```bash
mv oldname.txt newname.txt
```
![image](./images/rename-files-linux-01-mv-command-single.png)
```bash
mv file.txt ~/Documents/     # Move file
```

---

### `rm` – Remove Files

```bash
rm file.txt          # Delete file
rm -r folder_name    # Delete folder (recursively)
```
![image](./images/remove-directory-linux-02-rm-remove-empty.png)
⚠️ **Be careful!** There is no undo.

---

## ✅ 3. **File Viewing & Editing**

### `cat` – View File Contents

Displays content in terminal.

```bash
cat file.txt
```
![image](./images/cat.png)
---

### `nano` – Edit Files in Terminal

A basic terminal-based text editor.

```bash
nano file.txt
```

* Use arrows to move
* `CTRL + O` to save
* `CTRL + X` to exit
![image](./images/nano.png)
---

### `clear` – Clears the Terminal

```bash
clear
```

Shortcut: `CTRL + L`

---

## ✅ 4. **System Commands**

### `echo` – Print Text

Useful for debugging or scripting.

```bash
echo "Hello, World!"
```
![image](./images/echo.png)
---

### `whoami` – Show Current User

```bash
whoami
```
![image](./images/ami.png)
---

### `man` – Manual for Any Command

```bash
man ls
```
![image](./images/manls.png)
Use `q` to quit the manual.

---

## ✅ 5. **Searching and Finding**

### `find` – Locate Files

```bash
find . -name "*.txt"
```
![image](./images/how-to-find-files-and-directories-in-linux-2-compressed.webp)
🔍 Finds all `.txt` files in current folder and subfolders.

---

### `grep` – Search Inside Files

```bash
grep "hello" file.txt
```
![image](./images/agrep.png)
🔍 Searches for the word `hello` inside `file.txt`.

---

## ✅ 6. **Helpful Shortcuts**

| Shortcut   | Action                      |
| ---------- | --------------------------- |
| `Tab`      | Auto-complete files/folders |
| `↑ / ↓`    | Browse command history      |
| `CTRL + C` | Stop a running command      |
| `CTRL + L` | Clear screen                |

---

## ✅ 7. **Bonus: Chaining Commands**

* **Run multiple commands**:

```bash
mkdir test && cd test && touch hello.txt
```

* **Run only if previous command succeeds**: `&&`
* **Run regardless of success**: `;`

---

# Practice for creating user and groups (Lab5_Practice)

### 🔹 1. Create a new user

```bash
sudo useradd -m newuser
```
![image](./images/auser.png)
* `-m` → creates a home directory `/home/newuser`.

---

### 🔹 2. Create a new group

```bash
sudo groupadd newgroup
```
![image](./images/agroupadd.png)
---

### 🔹 3. Add the user to the group

```bash
sudo usermod -aG newgroup newuser
```
![image](./images/amod.png)
* `-aG` → append user to the supplementary group (doesn’t remove existing groups).

---

### 🔹 4. Create a file (as current user, e.g. root or your login user)

```bash
touch testfile.txt
```

Check ownership:

```bash
ls -l testfile.txt
```

Example:


![image](./images/als.png)

---

### 🔹 5. Assign ownership of the file to `newuser` and `newgroup`

```bash
sudo chown newuser:newgroup testfile.txt
```
![image](./images/ChatGPT%20Image%20Sep%2010,%202025,%2009_37_54%20PM.png)
---

### 🔹 6. Verify ownership

```bash
ls -l testfile.txt
```

Output:

```
-rw-r--r-- 1 newuser newgroup 0 Aug 19 14:02 testfile.txt
```

---

## Q1 What is the difference between chmod and chown?
### A1 ✅ 🔑 chmod (change mode)

Purpose: Changes the permissions (read, write, execute) of a file or directory.

Who can use it: The file’s owner or superuser (root).

Example:

chmod 755 file.txt


→ This gives owner full permissions (rwx), and others only read + execute (r-x).

👤 chown (change owner)

Purpose: Changes the owner (user) and/or group of a file or directory.

Who can use it: Only the superuser (root).

Example:

sudo chown newuser:newgroup file.txt


→ This makes newuser the owner and newgroup the group of file.txt.

⚡ Key Difference

chmod → What people can do with a file (permissions).

chown → Who owns the file (ownership).

👉 Think of it like this:

chown = change the person holding the keys 🔑

chmod = change what the keys can unlock 🚪

## Q2 How do you check current directory and user?
### A2 🎯 Use pwd to check current directory and whoami to see current user.