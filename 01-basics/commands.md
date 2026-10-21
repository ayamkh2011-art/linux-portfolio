## LINUX BASICS COMMANDS 

## 1 . pwd 
display the current working directory  
Example:
pwd

## 2 . ls
lists files and directories in current directory 
Example:
ls 

## 3 . mkdir
creates a new directory 
Example:
mkdir test-folder

## 4 . cd 
changes the current directory 
Example:
cd test-folder 

## 5 . cd .. 
moves to the parent directory 

## 6 . What I Practiced 
- creating a directory 
- navigating between directories 
- checking the current path 
- listing directory content 

## 7 . echo and >
the echo command display text
the > operator writes text to file 
Example:
echo "My First Linux project" > test.txt

## 8 . cat 
the cat command display the contents of a file 
Example:
cat test.txt

## What I Learned 
- creating a text file 
- writing text into a file 
- Reading file contents 

## 9 . cp
copies a file 
Example:
cp test.txt test-copy.txt

## 10 . mv 
moves or renames a file 
Example:
mv test-copy.txt backup.txt

## 11 . rm
removes a file 
Example:
rm backup.txt

## What I practiced 
- copying files 
- renaming files 
- removing a test file safely 

## 12 . touch
Creates an empty file.
Example: 
touch notes.txt

## 13. mkdir -p
Creates directories, including parent directories.
Example:
mkdir -p practice/projects/bash

## 14. ls -R
Lists directory contents recursively.
Example:
ls -R practice

## Practical Exercise
- Created nested directories.
- Created a text file.
- Wrote text into the file.
- Moved the file to another directory.
- Verified the final location.

## 15. grep
Searches for text inside a file.

Example:
grep -n 'mkdir' 01-basics/commands.md

- grep searches for a specific word or text.
- -n displays the line numbers where matches are found.

## What I Learned
- Searching for text inside a file.
- Displaying matching line numbers.

## 16. find
Searches for files and directories.

Example:
find ~/linux-portfolio -name "*.md"

- find searches for files and directories.
- -name searches for names matching a pattern.

## What I Learned
- Finding files by name.
- Searching inside a project directory.

### Finding directories only
Example:
find ~/linux-portfolio -type d

- -type d displays directories only.

### Finding files only
Example:
find ~/linux-portfolio -type f

- -type f displays files only.

### Finding text files
Example:
find ~/linux-portfolio -type f -name "*.txt"

- -type f searches for files only.
- -name "*.txt" matches files ending in .txt.

### Case-insensitive filename search
Example:
find ~/linux-portfolio -type f -iname "*.TXT"

- -name matches filename patterns with case sensitivity.
- -iname matches filename patterns without case sensitivity.

## 17. wc -l
Counts the number of lines in a file.

Example:
wc -l 01-basics/commands.md

- wc is used to count lines, words, and characters.
- -l counts lines.

## 18. wc -w
Counts the number of words in a file.

Example:
wc -w 01-basics/commands.md

- wc can count lines, words, and characters.
- -w counts words.

## 19. wc -c
Counts the number of bytes in a file.

Example:
wc -c 01-basics/commands.md

- -c counts bytes, not necessarily characters.

## 20. head
Displays the beginning of a file.

Example:
head -n 5 README.md

- -n specifies the number of lines to display.

## 21. tail
Displays the end of a file.

Example:
tail -n 5 README.md

- -n specifies the number of lines to display.

## 22. less
Displays a file one screen at a time.

Example:
less 01-basics/commands.md

- Use the arrow keys to navigate.
- Press q to quit.

## 23. file
Identifies the type of a file.

Example:
file README.md
file screenshots/01-project-structure.png

- file identifies the type and format of a file.
- It can help distinguish text files from images and other file types.

## 24. stat
Displays detailed information about a file.

Example:
stat README.md

- Shows the file size.
- Shows file permissions.
- Shows file modification time.

## 25. du -sh
Displays the total size of a directory in a human-readable format.

Example:
du -sh ~/linux-portfolio

- -s displays the total size.
- -h makes the size easier to read, using units such as KB or MB.

## 26. df -h
Displays filesystem disk space usage in a human-readable format.

Example:
df -h ~

- df shows filesystem space information.
- -h displays sizes in readable units such as GB and MB.
- ~ refers to the current user's home directory.

## 27. which
Displays the path of an executable command.

Example:
which bash

- which helps locate executable programs.
- The output shows the path used to run the command.

## 28. history
Displays previously entered shell commands.

Example:
history | tail -n 10

- history displays commands from the shell history.
- The pipe (|) sends output to another command.
- tail -n 10 displays the last 10 lines.

## 29. date
Displays the current system date and time.

Example:
date

- date displays the system's current date and time.

## 30. whoami
Displays the current username.

Example:
whoami

- whoami shows the username of the current user.

## 31. uname
Displays information about the operating system.

Example:
uname -a

- uname displays system information.
- -a displays all available system information.

## 32. hostname
Displays the name of the computer.

Example:
hostname

- hostname shows the system's host name.

## 33. id
Displays the current user's identity and group information.

Example:
id

- uid is the user ID.
- gid is the primary group ID.
- groups lists the groups the user belongs to.

## 34. ps
Displays information about running processes.

Example:
ps

- PID is the process ID.
- TTY identifies the terminal associated with a process.
- TIME shows the CPU time used.
- CMD shows the command being run.

## File Permissions — Introduction

### Checking file permissions
Example:
ls -l permissions-test.txt

- ls -l displays file permissions and file information.
- r means read permission.
- w means write permission.
- x means execute permission.
- - means the permission is not granted.

### Creating a test file
Example:
touch permissions-test.txt

- touch creates an empty file if it does not exist.
- A test file is useful for practicing permissions safely.

## chmod
Changes file permissions.

Example:
chmod 600 permissions-test.txt

- chmod changes the permissions of a file.
- 6 gives the owner read and write permissions.
- 0 removes all permissions for the group.
- 0 removes all permissions for others.
- Use a test file when practicing permissions.


### Setting permissions to 644
Example:
chmod 644 permissions-test.txt

- The owner can read and write.
- The group can read only.
- Others can read only.

### Adding permissions with chmod
Example:
chmod g+w permissions-test.txt

- u refers to the owner (user).
- g refers to the group.
- o refers to others.
- + adds a permission.
- - removes a permission.
- w means write permission.

### Removing permissions with chmod
Example:
chmod g-w permissions-test.txt

- The minus (-) sign removes a permission.
- g-w removes write permission from the group.
- The owner and others keep their existing permissions.

### Adding execute permission
Example:
chmod u+x permissions-test.txt

- u refers to the owner.
- + adds a permission.
- x means execute permission.
- Adding execute permission does not automatically make a text file a working program.

### Removing execute permission
Example:
chmod u-x permissions-test.txt

- u refers to the owner.
- - removes a permission.
- x means execute permission.
- u-x removes execute permission from the owner.

### Removing read permission from others
Example:
chmod o-r permissions-test.txt

- o refers to others.
- - removes a permission.
- r means read permission.
- o-r removes read permission from others.

### Adding read permission for everyone
Example:
chmod a+r permissions-test.txt

- a refers to all users: owner, group, and others.
- + adds a permission.
- r means read permission.
- a+r adds read permission for everyone.

### Removing write permission for everyone
Example:
chmod a-w permissions-test.txt

- a refers to all users.
- - removes a permission.
- w means write permission.
- a-w removes write permission from the owner, group, and others.

### Removing write permission for everyone
Example:
chmod a-w permissions-test.txt

- a refers to all users.
- - removes a permission.
- w means write permission.
- a-w removes write permission from the owner, group, and others.

### Setting exact permissions with symbols
Example:
chmod u=rw,g=r,o= permissions-test.txt

- u refers to the owner.
- g refers to the group.
- o refers to others.
- = sets the exact permissions for the specified users.
- The owner can read and write.
- The group can read only.
- Others have no permissions.

### Numeric permission reference
Linux permissions can be represented using numbers.

- 0 means no permissions.
- 1 means execute (x).
- 2 means write (w).
- 3 means write and execute (wx).
- 4 means read (r).
- 5 means read and execute (rx).
- 6 means read and write (rw).
- 7 means read, write, and execute (rwx).

### Common chmod examples
Example:
chmod 600 permissions-test.txt
chmod 644 permissions-test.txt
chmod 755 permissions-test.txt

- 600: the owner can read and write; others have no permissions.
- 644: the owner can read and write; group and others can read.
- 755: the owner has full permissions; group and others can read and execute.

### Checking permissions
Example:
ls -l permissions-test.txt

- ls -l displays file permissions and file information.
- Always check permissions after changing them.
- Practice on test files to avoid changing important project files.

## 35. File Ownership
Files have an owner and a group.

Example:
ls -l permissions-test.txt

- ls -l displays the owner and group of a file.
- The owner is the user associated with the file.
- The group identifies the group associated with the file.

## 36. chown
Changes the owner of a file.

Example:
sudo chown aya permissions-test.txt

- chown changes file ownership.
- sudo may be required to change the owner.
- Practice ownership changes only on test files.

## 37. chgrp
Changes the group associated with a file.

Example:
sudo chgrp aya permissions-test.txt

- chgrp changes the group ownership of a file.
- The specified group must exist.
- sudo may be required.

## 38. Viewing ownership and permissions
Example:
ls -l permissions-test.txt

- The first characters show file type and permissions.
- The next fields include the owner and group.
- The output also displays file size and modification information.

## 39. Permission Review
Linux permissions control who can read, write, or execute a file.

- r means read.
- w means write.
- x means execute.
- u refers to the owner.
- g refers to the group.
- o refers to others.
- a refers to all users.

Examples:
chmod 600 permissions-test.txt
chmod 644 permissions-test.txt
chmod u+x permissions-test.txt
chmod g-w permissions-test.txt
chmod a+r permissions-test.txt

- Use chmod to change permissions.
- Use chown to change the owner.
- Use chgrp to change the group.
- Use ls -l to inspect permissions and ownership.


# Process Management

## ps aux
Displays information about running processes.

Example:
ps aux

- ps displays process information.
- a includes processes associated with terminals.
- u displays user-oriented information.
- x includes processes without a controlling terminal.

## top
Displays running processes and system resource usage interactively.

Example:
top

- Displays processes and resource usage in real time.
- Press q to quit.

## pgrep
Finds processes by name.

Example:
pgrep -a bash

- pgrep searches for processes matching a name.
- -a displays the process ID and command line.

## kill
Sends a signal to a process.

Example:
kill PID

- Replace PID with the actual process ID.
- The default signal requests the process to terminate.
- Check the process ID carefully before using kill.

## sleep
Pauses a command for a specified amount of time.

Example:
sleep 5

- The number specifies the duration in seconds.
- Press Ctrl+C to interrupt a running command when appropriate.

## jobs
Lists jobs started from the current shell.

Example:
jobs

- Displays jobs running or stopped in the current shell.
- It does not list every process on the system.

## Running a job in the background
Example:
sleep 30 &

- & starts the command in the background.
- The shell can accept another command while the job runs.

## fg
Brings a background or suspended job to the foreground.

Example:
fg

- fg resumes or brings a job to the foreground.
- It works with jobs managed by the current shell.

## bg
Resumes a suspended job in the background.

Example:
bg

- bg resumes a stopped job in the background.
- It works with jobs managed by the current shell.

## What I Learned
- Viewing running processes.
- Searching for processes by name.
- Understanding process IDs.
- Listing jobs in the current shell.
- Understanding foreground and background jobs.


# Package Management with APT

## 40. apt update
Refreshes the local package information.

Example:
sudo apt update

- Updates the package lists from configured repositories.
- It does not itself upgrade installed packages.

## 41. apt upgrade
Installs available updates for installed packages.

Example:
sudo apt upgrade

- Updates installed packages when updates are available.
- Review the proposed changes before confirming.

## 42. apt search
Searches for packages by keyword.

Example:
apt search curl

- Searches package names and descriptions.
- Replace curl with another keyword when needed.

## 43. apt show
Displays information about a package.

Example:
apt show curl

- Shows package details, version, description, and dependencies.

## 44. apt install
Installs a package.

Example:
sudo apt install curl

- Installs the requested package and required dependencies.
- Review the installation prompt before confirming.

## 45. apt remove
Removes an installed package.

Example:
sudo apt remove curl

- Removes the selected package.
- Configuration files may remain.

## 46. apt list --installed
Lists packages marked as installed.

Example:
apt list --installed

- Displays packages installed on the system.

## 47. apt list --upgradable
Lists packages that have available updates.

Example:
apt list --upgradable

- Shows installed packages for which updates are available.

## 48. apt autoremove
Removes packages that were installed automatically and are no longer required.

Example:
sudo apt autoremove

- Review the proposed removals carefully before confirming.
- Do not confirm if you are unsure about the packages listed.

## What I Learned
- Refreshing package information.
- Searching for packages.
- Inspecting package details.
- Installing and removing software.
- Checking installed packages and available updates.
- Reviewing proposed system changes before confirming.


# Pipes and Redirection

## 49. Pipe |
Sends the output of one command to another command.

Example:
ls -l | less

- The pipe symbol | passes output to the next command.
- This allows commands to work together.

## 50. Output Redirection >
Writes command output to a file, replacing its previous contents.

Example:
echo "Hello Linux" > output.txt

- > redirects standard output to a file.
- Existing contents of the file are overwritten.

## 51. Append Output >>
Adds command output to the end of a file.

Example:
echo "Another line" >> output.txt

- >> appends output without replacing existing contents.
- It creates the file if it does not exist.

## 52. Input Redirection <
Uses a file as input for a command.

Example:
wc -l < output.txt

- < redirects the file contents to a command as standard input.

## 53. Error Redirection 2>
Redirects error messages to a file.

Example:
ls missing-file 2> errors.txt

- 2> redirects standard error.
- Error messages are saved in the specified file.

## 54. tee
Displays command output and writes it to a file.

Example:
echo "Linux practice" | tee output.txt

- tee sends output to the terminal and a file.
- By default, tee replaces the file contents.
- Use tee -a to append instead.

## 55. Combining Commands
Pipes can connect multiple commands.

Example

find ~/linux-portfolio -type f | wc -l

- find lists files.
- The pipe passes the list to wc.
- wc -l counts the output lines.

## What I Learned
- Connecting commands with pipes.
- Redirecting output to files.
- Appending output without overwriting files.
- Redirecting input and error messages.
- Displaying and saving output with tee.
- Combining commands to complete a task.


# Networking Basics

## 56. ip addr
Displays network interfaces and their IP addresses.

Example:
ip addr

- Shows network interfaces.
- Displays assigned IP addresses and interface status.

## 57. ip route
Displays the system's routing table.

Example:
ip route

- Shows routes used to reach network destinations.
- May display the default gateway.

## 58. hostname -I
Displays IP addresses assigned to the host.

Example:
hostname -I

- Shows the host's assigned IP addresses.
- The output depends on the network configuration.

## 59. ping
Tests connectivity by sending network packets.

Example:
ping -c 4 127.0.0.1

- -c specifies the number of packets to send.
- 127.0.0.1 is the loopback address.
- A successful ping does not guarantee that every network service works.

## 60. getent hosts
Looks up host information using the system's configured name services.

Example:
getent hosts example.com

- Can resolve a domain name to an IP address.
- Results depend on DNS and the system's name-service configuration.

## 61. ss -tuln
Displays listening network sockets.

Example:
ss -tuln

- -t displays TCP sockets.
- -u displays UDP sockets.
- -l shows listening sockets.
- -n displays numeric addresses and ports.

## 62. curl
Transfers data to or from a URL.

Example:
curl -I https://example.com

- -I requests response headers.
- curl can help inspect web-server responses.
- The result depends on network connectivity and server availability.

## 63. Network Troubleshooting
Useful commands for basic network diagnosis.

Examples:
ip addr
ip route
getent hosts example.com
ping -c 4 127.0.0.1

- Check whether a network interface is available.
- Inspect the routing table.
- Check hostname resolution.
- Test the local network stack.

## What I Learned
- Viewing network interfaces and IP addresses.
- Inspecting routing information.
- Understanding basic connectivity tests.
- Looking up domain names.
- Viewing listening network sockets.
- Inspecting HTTP response headers with curl.


# Bash Scripting

## 64. What Is a Bash Script?
A Bash script is a text file containing commands executed by Bash.

Example:
#!/bin/bash
echo "Hello, Linux!"

- The first line identifies the Bash interpreter.
- echo displays text in the terminal.
- Scripts can automate repetitive tasks.

## 65. Creating and Running a Script
Create a script file and open it in a text editor.

Example:
nano hello.sh

Script contents:
#!/bin/bash
echo "Hello, Linux!"

Run the script with:
bash hello.sh

- nano is a terminal text editor.
- bash runs the commands inside the script.
- Press Ctrl+O to save in nano, Enter to confirm, and Ctrl+X to exit.

## 66. Comments
Comments explain code and are ignored by Bash.

Example:
# This is a comment
echo "Learning Linux"

- A # at the beginning of a line introduces a comment.
- Comments make scripts easier to understand.

## 67. Variables
Variables store values for later use.

Example:
name="Aya"
echo "$name"

- Assign a value without spaces around =.
- Use $name to access the variable's value.
- Quotes help preserve spaces in text.

## 68. Reading User Input
The read command receives input from the user.

Example:
read -r name
echo "Hello, $name"

- read accepts input from the terminal.
- -r prevents backslashes from being treated specially.
- The entered value can be stored in a variable.

## 69. Command Substitution
Command substitution stores the output of a command in a variable.

Example:
current_dir=$(pwd)
echo "$current_dir"

- $(command) runs a command and substitutes its output.
- The result can be stored in a variable.

## 70. If Statements
An if statement runs commands depending on a condition.

Example:
if [ -f "README.md" ]; then
    echo "File exists"
else
    echo "File not found"
fi

- -f checks whether a regular file exists.
- then starts the commands for a true condition.
- else is optional.
- fi ends the if statement.

## 71. For Loops
A for loop repeats commands for each item in a list.

Example:
for item in one two three; do
    echo "$item"
done

- The loop processes each item in the list.
- done marks the end of the loop.

## 72. While Loops
A while loop repeats commands as long as its condition is true.

Example:
count=1
while [ "$count" -le 3 ]; do
    echo "$count"
    count=$((count + 1))
done

- while checks the condition before each iteration.
- $((...)) performs integer arithmetic.
- The condition must eventually become false to avoid an endless loop.

## 73. Exit Status
Commands return an exit status to indicate success or failure.

Example:
ls README.md
echo $?

- $? contains the exit status of the most recent command.
- 0 normally indicates success.
- A non-zero status usually indicates an error or another condition.

## 74. Functions
Functions group commands that can be reused.

Example:
greet() {
    echo "Hello, Linux!"
}

greet

- A function gives a name to a group of commands.
- Calling the function runs its commands.

## What I Learned
- Understanding Bash scripts and the interpreter line.
- Creating and running a simple script.
- Using comments and variables.
- Reading user input.
- Capturing command output.
- Using if statements and loops.
- Checking exit statuses.
- Defining and calling functions.


# Git Basics

## 75. git --version
Displays the installed Git version.

Example:
git --version

- Git tracks changes to files.
- Git helps maintain a history of project versions.
- A repository stores the project's tracked history.


# Git Workflow

## git status
Displays the current state of the working directory.

Example:
git status

## git add
Stages changes for the next commit.

Example:
git add 01-basics/commands.md

## git commit
Saves staged changes in the repository history.

Example:
git commit -m "Update Linux command journal"

## git log
Displays the commit history.

Example:
git log --oneline

## Basic Git Workflow
1. Edit or create files.
2. Run git status to inspect changes.
3. Run git add to stage the changes.
4. Run git commit to save a new version.
5. Run git log --oneline to review saved versions.


# Git Workflow

## git status
Displays the current state of the working directory.

Example:
git status

## git add
Stages changes for the next commit.

Example:
git add 01-basics/commands.md

## git commit
Saves staged changes in the repository history.

Example:
git commit -m "Update Linux command journal"

## git log
Displays the commit history.

Example:
git log --oneline

## Basic Git Workflow
1. Edit or create files.
2. Run git status to inspect changes.
3. Run git add to stage the changes.
4. Run git commit to save a new version.
5. Run git log --oneline to review saved versions.

