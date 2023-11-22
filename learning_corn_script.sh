%%writefile learning_corn_script.sh

#!/bin/bash
# Lab Session: Introduction to Cron Scheduling in Ubuntu
# Author: Prof. Mehdi Pirahandeh, ISE Department
# This script is a beginner's guide to understand and use cron
scheduling in Ubuntu.
# Step 1: Check if Cron is installed
# Cron usually comes pre-installed on Ubuntu, but we'll check to be
sure.
echo "Checking if Cron is installed..."
if ! command -v cron &> /dev/null
then
 echo "Cron is not installed. Installing now..."
 sudo apt-get update
 sudo apt-get install cron
else
 echo "Cron is already installed."
fi
# Step 2: Ensure the Cron service is running
echo "Ensuring the Cron service is running..."
sudo service cron start
# Step 3: Basic Introduction to Crontab
# Crontab (Cron table) is a file that contains the schedule of cron
entries to be run.
echo "Opening the crontab file for the current user..."
crontab -l
# Step 4: Adding Cron Jobs
# Now, we will add a few simple cron jobs as examples.
# Example 1: Run a script every minute
# This cron job runs a script every minute. We will create a simple
script for this purpose.
echo "Creating a sample script to be run every minute..."
echo "#!/bin/bash" > ~/cron_example_script.sh
echo "echo 'Cron job ran at $(date)'" >> ~/cron_example_script.sh
chmod +x ~/cron_example_script.sh
(crontab -l 2>/dev/null; echo "* * * * * ~/cron_example_script.sh") |
crontab -
echo "Added a cron job to run a script every minute."
# Example 2: Schedule a job for a specific time
# This cron job is scheduled to run at 10 AM every day.
(crontab -l 2>/dev/null; echo "0 10 * * * echo 'Good morning! Time is
10 AM' >> ~/cron_good_morning.txt") | crontab -
echo "Added a cron job to run at 10 AM every day."
# Example 3: Schedule a job to run on a specific day of the week
# This cron job is scheduled to run at 8 PM every Friday.
(crontab -l 2>/dev/null; echo "0 20 * * 5 echo 'Happy Friday!' >>
~/cron_friday.txt") | crontab -
echo "Added a cron job to run at 8 PM every Friday."
# Example 4: Schedule a job to run every hour
# This cron job runs at the beginning of every hour.
(crontab -l 2>/dev/null; echo "0 * * * * echo 'Hourly reminder' >>
~/cron_hourly.txt") | crontab -
echo "Added a cron job to run at the beginning of every hour."
# Example 5: Schedule a job to run on specific months
# This cron job runs at noon on the first day of January and July.
(crontab -l 2>/dev/null; echo "0 12 1 1,7 * echo 'Happy New Year and
Mid-Year!' >> ~/cron_biannual.txt") | crontab -
echo "Added a cron job to run at noon on the first day of January and
July."
# Example 6: Schedule a job to run every 5 minutes
(crontab -l 2>/dev/null; echo "*/5 * * * * echo 'This runs every 5
minutes' >> ~/cron_every_5_minutes.txt") | crontab -
echo "Added a cron job to run every 5 minutes."
# Example 7: Schedule a job to run at 2:15 PM on weekdays
(crontab -l 2>/dev/null; echo "15 14 * * 1-5 echo '2:15 PM on
Weekdays' >> ~/cron_weekdays.txt") | crontab -
echo "Added a cron job to run at 2:15 PM on weekdays."
# Example 8: Schedule a job to run on the first day of every month
(crontab -l 2>/dev/null; echo "0 0 1 * * echo 'First Day of the Month'
>> ~/cron_first_day_month.txt") | crontab -
echo "Added a cron job to run on the first day of every month."
# Example 9: Schedule a job to run every 30 seconds
# Cron does not support a "per second" schedule, we need to run two
cron jobs to achieve this.
(crontab -l 2>/dev/null; echo "* * * * * echo 'Runs at 0 seconds' >>
~/cron_every_30_seconds.txt") | crontab -
(crontab -l 2>/dev/null; echo "* * * * * ( sleep 30 ; echo 'Runs at 30
seconds' >> ~/cron_every_30_seconds.txt )") | crontab -
echo "Added two cron jobs to run every 30 seconds."
# Example 10: Schedule a job to run on the last day of the month
(crontab -l 2>/dev/null; echo "0 0 L * * echo 'Last Day of the Month'
>> ~/cron_last_day_month.txt") | crontab -
echo "Added a cron job to run on the last day of the month."
# Example 11: Schedule a job to run at midnight on Saturdays and
Sundays
(crontab -l 2>/dev/null; echo "0 0 * * 6,0 echo 'Midnight on Weekends'
>> ~/cron_weekends_midnight.txt") | crontab -
echo "Added a cron job to run at midnight on Saturdays and Sundays."
# Example 12: Schedule a job to run every other day at 3 PM
(crontab -l 2>/dev/null; echo "0 15 */2 * * echo '3 PM Every Other
Day' >> ~/cron_every_other_day.txt") | crontab -
echo "Added a cron job to run every other day at 3 PM."
# Example 13: Schedule a job to run at noon on the 15th day of the
month only in January, June, and December
(crontab -l 2>/dev/null; echo "0 12 15 1,6,12 * echo 'Noon on 15th of
Jan, Jun, Dec' >> ~/cron_specific_months.txt") | crontab -
echo "Added a cron job to run at noon on the 15th day of the month
only in January, June, and December."
# Example 14: Schedule a job to run at 10 PM on weekdays and at 1 PM
on weekends
(crontab -l 2>/dev/null; echo "0 22 * * 1-5 echo '10 PM on Weekdays'
>> ~/cron_diff_times_weekday_weekend.txt") | crontab -
(crontab -l 2>/dev/null; echo "0 13 * * 6,0 echo '1 PM on Weekends' >>
~/cron_diff_times_weekday_weekend.txt") | crontab -
echo "Added a cron job to run at different times on weekdays and
weekends."
# Example 15: Schedule a job to run on the first Monday of every month
#(crontab -l 2>/dev/null; echo "0 0 * * 1 [ \$(date +\%d) -le 7 ] &&
echo 'First Monday of the Month' >> ~/cron_first_mon
# Advanced Example 16: Backup Script Execution with Conditional Logic
# Schedule a backup script to run every day at midnight, but only if
disk usage is above 80%
##(crontab -l 2>/dev/null; echo "0 0 * * * [ \$(df / | awk 'END{print
+\$5}') -gt 80 ] && /path/to/backup_script.sh") | crontab -
#echo "Added a cron job to run a backup script daily at midnight, only
if disk usage is over 80%."
# Advanced Example 17: Database Check and Email Notification
# This job checks the database status every hour and sends an email if
it's down.
(crontab -l 2>/dev/null; echo "0 * * * * /path/to/db_check.sh || mail 
-s 'Database Down' admin@example.com") | crontab -
echo "Added a cron job to check database status hourly and email if
it's down."
# Advanced Example 18: Log File Rotation on the First Day of the Month
# Rotate log files on the first day of every month and restart the
logging service.
(crontab -l 2>/dev/null; echo "0 0 1 * * /usr/sbin/logrotate
/etc/logrotate.conf && systemctl restart logging.service") | crontab -
echo "Added a cron job for monthly log file rotation and service
restart."
# Advanced Example 19: System Health Check at Specific Intervals with
Logging
# Run a system health check script every 30 minutes, log the output,
and email if any issues are found.
(crontab -l 2>/dev/null; echo "*/30 * * * * /path/to/health_check.sh
>> /var/log/health_check.log || mail -s 'Health Check Alert'
admin@example.com") | crontab -
echo "Added a cron job for system health checks with logging and
conditional emailing."
# Advanced Example 20: Conditional Cron Job Based on File Existence
# Execute a cleanup script every day at 3 AM, but only if a specific
file exists.
(crontab -l 2>/dev/null; echo "0 3 * * * [ -f
/path/to/specific_file.txt ] && /path/to/cleanup_script.sh") | crontab
-
echo "Added a cron job to run a cleanup script daily at 3 AM,
conditional on file existence."
# Advanced Example 21: Check Internet Connectivity and Reboot Router
# This cron job checks internet connectivity every 15 minutes. If it's
down, it triggers a router reboot script.
(crontab -l 2>/dev/null; echo "*/15 * * * * /path/to/check_internet.sh
|| /path/to/reboot_router.sh") | crontab -
echo "Added a cron job to check internet connectivity and reboot the
router if it's down."
# Advanced Example 22: Weekly Database Backup with Compression and
Encryption
# Perform a database backup every Sunday at 2 AM, compress and encrypt
the output.
(crontab -l 2>/dev/null; echo "0 2 * * 0 /path/to/db_backup.sh | gzip
| openssl enc -aes-256-cbc -out /path/to/backups/db_backup_$(date +\
%Y\%m\%d).gz.enc") | crontab -
echo "Added a cron job for weekly database backup with compression and
encryption."
# Advanced Example 23: System Update and Clean-Up at Low Usage Time
# Run system updates and clean-ups at 4 AM on the first day of every
month, but only if system load is low.
(crontab -l 2>/dev/null; echo "0 4 1 * * [ \$(awk '{print \$1}' <
/proc/loadavg) < 0.5 ] && sudo apt-get update && sudo apt-get -y
upgrade && sudo apt-get -y autoremove") | crontab -
echo "Added a cron job for system updates and clean-up at low system
load."
# Advanced Example 24: Monitor Disk Space and Alert via Email
# Monitor disk space every 6 hours. If usage exceeds 90%, send an
email alert.
(crontab -l 2>/dev/null; echo "0 */6 * * * [ \$(df --output=pcent / |
tail -1 | tr -dc '0-9') -ge 90 ] && mail -s 'Disk Space Alert'
admin@example.com < /path/to/disk_space_report.txt") | crontab -
echo "Added a cron job to monitor disk space and send email alerts if
usage is high."
# Advanced Example 25: Backup and Sync Important Files to Remote
Server
# Backup important files every day at midnight and sync them to a
remote server, logging the activity.
(crontab -l 2>/dev/null; echo "0 0 * * * tar -czf /path/to/backup_$
(date +\%Y\%m\%d).tar.gz /path/to/important_files && rsync -avz
/path/to/backup_*.tar.gz user@remote-server:/remote/path >>
/path/to/backup_sync.log") | crontab -
echo "Added a cron job to backup and sync important files to a remote
server."
# Final Step: List all Cron Jobs
# Let's list all the cron jobs we've added.
echo "Here are all the cron jobs currently scheduled:"
crontab -l
# Conclusion
echo "This concludes the basic introduction to Cron scheduling. You
can modify or remove jobs using 'crontab -e'. Happy scheduling!"
