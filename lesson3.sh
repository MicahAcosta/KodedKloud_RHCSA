#Lesson 3: Creating Simple Shell Scripts

#use scripting to automate system maintaince tasks
touch script.sh
vim script.sh

#!/bin/bash
#log the date and time the script was lasr executed
date >> /tmp/script.log
cat /proc/version >> /tmp/script.log
#to save esc, :, w, q

#make it executable
chmod u+x script.sh #only the owner
chmod +x script.sh #anubody

#to run

./script.sh

:'1. Under bobs home

Create a script called script.sh. This script should create a tar archive called archive.tar.gz. The script should archive the directory called dir1.

Please make sure you execute the script at least once.

Soln'

#Create script.sh script:
vi script.sh
#add below given code in it:

#!/bin/bash
tar acf archive.tar.gz dir1

#Make it executable:

chmod u+x script.sh


#Finally execute the script:
./script.sh


'2. Under bobs home:
Create script2.sh script that displays if the sshd.service unit is enabled or disabled.

Remember to make this script executable and try to execute it at least once to verify your answer.
'

#Create script2.sh script:
vi /home/bob/script2.sh

#add below given code in it:

#!/bin/bash
systemctl is-enabled sshd.service

#Make it executable:


chmod u+x /home/bob/script2.sh


#Finally execute the script:

./script2.sh


'Write a script at /home/bob/linux-users.sh



1: Read the user names in the file /home/bob/users file.
2: Output $user is a Linux user. for each user name in the file. $user represents the user name, and each output should be appended to a new line.
3: The output should be directed to the file /home/bob/userlist.txt

Make your script executable and run it after you have finished.

Create the /home/bob/linux-users.sh script and add below code in it:

'

#!/bin/bash
for user in $(cat /home/bob/users.txt)
do
  echo "$user is a Linux user." >> /home/bob/userlist.txt
done

#Give execute permission to the script:

chmod u+x /home/bob/linux-users.sh

#Execute the script:

./linux-users.sh




'Write a script at /home/bob/ezyum.sh that appends a single user input to the command yum. It should then output Running the command: followed by the full command that would be formed using the user input. Lastly, it should run the full command formed with the user input.

Create the /home/bob/ezyum.sh script and add below code in it:

'

#!/bin/bash
echo Running the command yum $1
yum $1


'Create a script /home/bob/perm.sh. This script should set permissions on /home/bob/dir8 directory so that user owner only has x (execute) permissions, group owner and others must not have any permissions at all.

Remember to make this script executable and try to execute it at least once to verify your answer.
'

#!/bin/bash
chmod 0100 /home/bob/dir8
