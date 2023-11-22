%%writefile corn_guid_script.sh

#!/bin/bash
# Comprehensive Cron Guide for Ubuntu
# Author: Prof. Mehdi Pirahandeh, ISE Department
# This script provides a layered approach to understanding Cron on
Ubuntu, suitable for all levels.
echo "Cron Guide for Ubuntu: From Basic to Advanced"
# Part 1: Basic Information
# Cron is a time-based job scheduler in Unix-like operating systems
including Ubuntu.
# It enables users to schedule jobs (commands or scripts) to run
periodically at fixed times, dates, or intervals.
echo "---- Part 1: Basic Information ----"
echo "Cron is used to schedule commands at a specific time. These
scheduled commands are called 'Cron jobs'."
echo "Cron Jobs are defined in a 'crontab', which is a configuration
file that specifies shell commands to run periodically on a given
schedule."
# Basic Example: Running a command every day at 5 PM
echo "Basic Example: To run a command every day at 5 PM, you would add
the following line to your crontab:"
echo "0 17 * * * /path/to/command"


# Part 2: Intermediate Information

echo "---- Part 2: Intermediate Information ----"
echo "Intermediate Example: To run a script at 3 AM every Monday, the
crontab entry would be:"
echo "0 3 * * 1 /path/to/script.sh"
# Intermediate Example: Editing Crontab
echo "To edit your crontab, you use the command 'crontab -e'. This
opens your crontab file in the default text editor."

# Part 3: Advanced Information

# Advanced Cron Jobs involve setting up conditional execution, error
logging, and complex scheduling.
echo "---- Part 3: Advanced Information ----"
echo "Advanced Example 1: Conditional Execution"
echo "0 5 * * * [ -f /path/to/check_file ] &&
/path/to/execute_if_file_exists"
echo "Advanced Example 2: Error Logging"
echo "30 22 * * * /path/to/daily_backup.sh > /var/log/backup.log 2>&1"
echo "Advanced Example 3: Complex Scheduling"
echo "0 20 * * 1-5 /path/to/workday_shutdown.sh # Runs at 8 PM on
weekdays"
# Advanced Example: Special Characters
echo "Special characters like '*', '/', and ',' can be used for more
complex time specifications."
# Conclusion
echo "This script offers a tiered exploration of Cron, from basic to
advanced use. To learn more, try editing your crontab and adding your
own jobs."

# End of script
