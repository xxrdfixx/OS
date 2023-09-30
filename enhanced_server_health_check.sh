# Enhanced Server Health Checkup Script
# Author: Senior Ubuntu Developer and Professor

echo " ================ Server Health Checkup ================"

# Function to check running processes
check_running_processes() {
	echo " --------- Checking running processes ------------'

	# Top 5 CPU-consuming processes
	echo "1. Processes comsuming more than 10% CPU:"
	ps aux --sort=-%cpu | awk 'NR<=5 {print $0}'

	# List all runnng 'java' processes
	echo "2. List all running 'java' processes:"
	ps aux | grep 'java'

	# Liist all running 'http' processes
	echo "3. List all running 'http' processes:"
	ps aux | grep 'http'

	# List all running 'mysql' processes
	echo "4. List all running 'mysql' processes:"
	ps aux | grep 'mysql'

	# Count of all running processes
	echo "5. Total number of running processes"
	ps -e | wc -l
}

# Function to check CPU utilization
check_cpu_utilization() {
	echo " -------- Checking CPU Utilization --------"
	
	# CPU utilization of critical processes
	echo "1. CPU utilization of critical processes:"
	ps -eo %cpu,command | egrep '(java|http|mysql)' | awk '$1 >10 {print $0}
	
	# Average CPU load in the last minute
	echo "2. Average CPU load in the last minute:"
	uptime | awk '{print $10}'

	# CPU info 
	echo "3. CPU info:"
	lscpu

	# Top 5 CPU-consuming users
	echo '3. Top 5 CPU-consuming users:'
	top -b -n 1 | grep '^%Cpu' | tail -n 5
	
	
	# Function to check memory utilization
	check_memory_utilization() {
	echo " ----------- Checking memory utilization ------------"
	
	# Freeing up cache 
	echo "1. Freeing up cache: "
	sync && echo 3 > /proc/sys/vm/drop_caches
	
	# Display free memory
	echo "2. Display free memory: "
	free -h
	
	# Display swap usage
	echo "3. Display swap usage: "
	swapon --show
	
	# Display top 5 memory-consuming processes
	echo "4. Top 5 memory-consuming processes: "
	ps aux --sort=-%mem | awk 'NR<=5 {print $0}
	
	# Display available memory in megabytes 
	echo "5. Available memory in megabytes: "
	free -m | awk 'NR==2 {print $7}
	}

# Function to check for zombie processes
check_zombie_processes () {
	echo " --------- Checking Zombie Processes ---------"
	
	# Killing zombie processes
	echo "1. Killing zombie processes:"
	ps aux | awk '$8=="Z" {print "kill -9" $2}' | sh
	
	# List all zombie processes
	echo "2. List all zombie processes: "
	ps aux | awk '$8=="Z"'
	
	
# Function to check load average
check_load_average () {
	echo "----------- Checking load average -------------"
		
	# Current load average 
	echo "1. Current load average: "
	uptime
	
	# Load average of the last 15 minutes
	echo "2. Load average of the last 15 minutes: "
	uptime | awk '{print $12}'

	# Number of currently running processes
	echo "4. Number of currently running processes: "
	uptime | awk '{print $6}'

	# Number of users currently logged in
	echo "5. Number of users currently logged in: "
	uptime | awk '{print $4}'
	}
	
	
# Main function to call all checks 
main () {
	check_running_processes
	check_cpu_utilization
	check_memory_utilization
	check_zombie_processes
	check_load_average
	check_disk_utilization
	}
	
 Execute main function
 main
 
 Writing enhanced_server_health_check.sh
 	
	
	
	
	
	
	
	
	
