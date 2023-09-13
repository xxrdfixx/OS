#Creating a Shell Script

nano my_script.sh
echo "Creates a shell script"

#The Shebang Line

#1/bin/bash

chmod +x my_script.sh
echo "making it executable"


bash my_script.sh
echo "running a shell script"

#Using ./Syntax
./my_script.sh

#Modifying a Shell Script
bash -x my_script.sh 
echo "testing and debugging"

#Data Collection
#!/bin/bash
wget https://example.com/dataset.zip 
unzip dataset.zip
echo "downloading a dataset"

#File Manipulation
#1/bin/bash
for file in *.jpg; do
    mv "$file""prefix_$file"  
done
echo "Renaming files"

#Data processing
#!/bin/bash
csvtojson input.csv > output.json 
echo "Converting CSV to JSON"

#Running models
#!/bn/bash
python3 run_model.py 
echo "Running a Python Script"

#Monitoring
#!/bin/bash
nvidia-smi 
echo "Monitoring GPU Usage"

#Batch Processing
#!/bin/bash
for seed in {1..5}; do
    python3 experiment.py -seed $seed 
done
echo "Runnning Multiple Experiments"

#Scheduling
#!/bin/bash
#Add this line to your crontab "Scheduling tasks with Cron"
#0 * * * * /path/to/your/script.sh

#Networking
#!/bin/bash
scp data.txt username@remote:/path/to/destination  
echo "Sending data to remote server"

#Resource Cleanup
#1/bin/bash
rm -rf /tmp/* 
echo "Deleting Temporary Files"

#Automation
#!/bin/bash
# Data Collection
wget https://example.com/dataset.zip
unzip dataset.zip
# Preprocessing
python3 preprocess.py
# Training
python3 train.py
#Evaluation
python3 evaluate.py



#Creating an Empty File: touch
touch newfile.txt
echo "This command creates a new empty file named newfile.txt in the current directory."
    
#Creating a New Folder: mkdir
mkdir newfolder
echo "This command creates a new folder named newfolder"

#Navigating Filesystem
#Change Directory: cd
cd newfolder
echo "This command navigates the user into the newfolder directory"

#Print Working Directory: pwd
pwd
echo "This command displays the current directory’s absolute path."

#File Operations
#Listing Files: ls
ls -l
echo "This command lists files with additional information like permissions and own-
ership."

#Copying Files: cp
cp source.txt destination.txt
echo "This command copies source.txt to destination.txt."

#Moving Files: mv
mv old.txt new.txt
echo "This command moves or renames old.txt to new.txt"

#Deleting Files: rm
rm unwanted.txt
echo "This command deletes unwanted.txt"

#Folder Operations
#Listing Directory Contents: ls
ls
echo "This command lists all files and folders in the current directory."

#Removing Empty Directories: rmdir
rmdir emptyfolder
echo "This command removes emptyfolder if it is empty"

#File and Folder Permissions
#Changing File Permissions: chmod
chmod 755 myfile.txt
echo "This command changes the permissions of myfile.txt to 755."

#Changing File Ownership: chown
sudo chown newowner:newgroup myfile.txt
echo "This command changes the owner of myfile.txt to newowner and the group
to newgroup"

#System Monitoring
#Viewing System Processes: top
top
echo "This command shows dynamic, real-time data about system processes."

#Disk Usage: df
df -h
echo "This command displays disk usage in a human-readable format"

#Networking
#Checking Network Connectivity: ping
ping google.com
echo "This command checks network connectivity to google.com."

#Downloading Files: wget
wget https://example.com/file.zip
echo "This command downloads a file from the internet."

#Text Processing
#Searching Within Files: grep
grep "search_term" file.txt
echo "This command searches for search term within file.txt."

#Word Count: wc
wc file.txt 
echo "This command counts the number of lines, words, and characters in file.txt."

#Package Management
#Installing Software: sudo apt install
sudo apt install package_name
echo "This command installs the specified software package"

#Updating System: sudo apt update && sudo apt upgrade
sudo apt update && sudo apt upgrade
echo "This command updates the package list and then upgrades the installed pack-
ages."






    
