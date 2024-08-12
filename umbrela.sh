#!/bin/bash

#   Author      :       Tkemza

#   Github      :       https://github.com/tkemza

#   Discord     :       n11kol1c

#   MIT LICENSE :       (C) 2024 tkemza 


function reset_color() {
    # Reset color 
	tput sgr0   # reset attributes
	tput op     # reset color
	return      # return attribute
}

function colors() {
    ## ANSI colors (FG & BG)
    RED="$(printf '\033[31m')"  
    GREY="$(printf '\033[2;37m')"
    DARKGREEN="$(printf '\033[2;32m')"
    YELLOW="$(printf '\033[1;33m')"
    GREEN="$(printf '\033[32m')"  
    ORANGE="$(printf '\033[33m')"  
    BLUE="$(printf '\033[34m')"
    MAGENTA="$(printf '\033[35m')"  
    CYAN="$(printf '\033[36m')"  
    WHITE="$(printf '\033[37m')" 
    BLACK="$(printf '\033[30m')"
    REDBG="$(printf '\033[41m')"  
    GREENBG="$(printf '\033[42m')"  
    ORANGEBG="$(printf '\033[43m')"  
    BLUEBG="$(printf '\033[44m')"
    MAGENTABG="$(printf '\033[45m')"  
    CYANBG="$(printf '\033[46m')"  
    WHITEBG="$(printf '\033[47m')" 
    BLACKBG="$(printf '\033[40m')"
    RESETBG="$(printf '\e[0m\n')" # Color reset
    RESET="$(printf '\033[0m')"
}

function textAttributes() {
    ## ANSI Attributes
    BOLD="$(printf '\033[1m')"
    ITALIC="$(printf '\033[3m')"
    DIM="$(printf '\033[2m')"
    RESET="$(printf '\033[0m')"
}

function sys_update() {
    { colors; reset_color; textAttributes; } # Define colors and reset attributes
    SYSUPDT=1
    if [[ $SYSUPDT -eq 1 ]]; then
        apt-get update -y # System update command
    else
        printf "${RED}[${RESETBG}!${RED}]${RESETBG} System update has been ocurrapted." # Error message
    fi
}

function tool_update() {
    { colors; reset_color; textAttributes; } # Define colors and reset attributes
    UPDT=1 # Setting attribute
    __newsr__="https://github.com/tkemza/umbrela.git" # Git cloning repository
    if [[ $UPDT -eq 1 ]]; then
        git pull https://github.com/tkemza/umbrela.git # Git cloning repository
        sleep 3.5
    fi
}

function main_banner() {
    { colors; reset_color; textAttributes; } # Define colors and reset attributes
    __version__="Version 1.0" # Tool version
    cat <<- EOF | lolcat # Banner
  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⡀⠀⠀  ⢀⣴⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⠴⠖⠚⠋⠉⠉⠁⠀⠀⠀⠀⠀⣈⣩⠿⠖⠶⢾⣁⣼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⣤⠶⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠔⠋⠉⠀⠀⠀⠀⠀⠈⠛⠦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣰⠞⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢠⣴⠿⠗⠒⠋⠉⠉⠉⠉⠙⣓⡶⢤⣀⣀⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢇⠈⠙⢦⡀⠀⠀⠀⠀⠀⠀⠀ 
⠈⠙⠳⣤⠀⠀⠀⠀⢀⠴⠚⠁⠀⠀⠈⠛⠒⠲⠤⢤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠈⠳⣄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠈⠻⣄⣠⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠞⠉⠙⠳⣦⣄⡀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠙⣦⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠈⠙⠒⠶⢤⣀⠀⠀⠀⠀⠀⠀⢀⠔⠁⠀⠀⠀⡼⢁⡾⠉⠓⢦⣄⠀⠀⠀⢸⠀⠀⠀⠀⠀⠈⢧⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠓⢦⡀⠀⠀⡴⠃⠀⠀⠀⠀⣰⠃⡼⠁⠀⠀⢰⠉⠳⣄⠀⢸⠀⠀⠀⠀⠀⠀⠈⢧⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣦⡎⠀⠀⠀⠀⠀⣰⠇⣼⠁⠀⠀⢀⡏⠀⠀⠘⢷⡼⠀⠀⠀⠀⠀⠀⠀⠈⣧⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠛⠲⢦⢏⣰⠃⠀⠀⠀⡜⠀⠀⠀⠀⠈⠓⠲⠦⣄⡀⠀⠀⠀⠀⠹⡇⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⣰⠟⢦⡀⠀⡼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠈⡟⢶⣀⠀⠀⠀⢻⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡞⢠⠏⠀⠀⠹⣾⣅⣀⣀⣀⡀⠀⠀⠀⠀⠀⢰⠇⠀⠙⣦⠀⠀⢸⡆⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⢁⡏⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠑⠦⣄⡀⠀⢸⠀⠀⠀⠘⣧⠀⢸⡇⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠃⡾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢦⣮⠤⠤⠤⢤⣜⡆⣼⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⢃⡼⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣿⠃⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠇⡼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡏⣰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡞⣰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⣸⠿⣿⣯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢀⡾⠋⣿⠀⠀⠀⠀⢠⠏⠀⣼⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢸⠁⠀⣏⠀⠀⠀⢀⡿⠀⢠⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠸⣧⠀⠙⠦⣤⡤⠞⠁⢠⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠈⠳⢦⣀⡀⠀⣀⡴⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${__version__}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
EOF
}

function main_logo() {
    { colors; reset_color; textAttributes; } # Define colors and reset attributes

    cat <<- EOF | lolcat # Logo

    ▄• ▄▌• ▌ ▄ ·. ▄▄▄▄· ▄▄▄  ▄▄▄ .▄▄▌   ▄▄▄· 
    █▪██▌·██ ▐███▪▐█ ▀█▪▀▄ █·▀▄.▀·██•  ▐█ ▀█ 
    █▌▐█▌▐█ ▌▐▌▐█·▐█▀▀█▄▐▀▀▄ ▐▀▀▪▄██▪  ▄█▀▀█ 
    ▐█▄█▌██ ██▌▐█▌██▄▪▐█▐█•█▌▐█▄▄▌▐█▌▐▌▐█ ▪▐▌
     ▀▀▀ ▀▀  █▪▀▀▀·▀▀▀▀ .▀  ▀ ▀▀▀ .▀▀▀  ▀  ▀ 

EOF
}

function aboutLogo() {
    { colors; reset_color; textAttributes; }

    cat <<- EOF | lolcat

               _                 _   
         /\   | |               | |  
        /  \  | |__   ___  _   _| |_ 
       / /\ \ | '_ \ / _ \| | | | __|
      / ____ \| |_) | (_) | |_| | |_ 
     /_/    \_\_.__/ \___/ \__,_|\__|                          
EOF
}

function logoDownAbout() {
    { colors; reset_color; textAttributes; } # Includes colors
    echo "" # Space make
    { printf " ${RED}[${RESETBG}::${RED}]${BLUE} Tool powered by GreyHat organization ZeroByte ${RED}[${RESETBG}::${RED}]${RESETBG} "; reset_color; echo ""; }
    { printf " ${RED}[${RESETBG}::${RED}]${BLUE}      Github : https://github.com/tkemza       ${RED}[${RESETBG}::${RED}]${RESETBG} "; echo ""; }
}

function start_menu() {
    { colors; reset_color; sleep 1; textAttributes; } # Includes colors and sleep
    { main_banner; sleep 0.3; sys_update; tool_update; } # Set banners and sys updates
}

# on_demand_scan.sh
# This script performs an on-demand virus scan using ClamAV
function clamCheck() {
    { colors; reset_color; textAttributes; }
# Check if ClamAV is installed, if not, prompt to install
if ! command -v clamscan; then
    sleep 1
    printf " Do you want to install them (y/n)? "
    read -r install_choice # User Choice 
    if [ "$install_choice" == "y" ]; then
        echo " Installing Script..."
        sudo apt-get update # System Update
        sudo apt-get install -y clamav clamav-daemon # Installing clamav and plugins
        sudo freshclam # Using freshclam
        sudo systemctl enable clamav-daemon # System enable clamav plugin
        sudo systemctl start clamav-daemon # Using systemctl start clamav plugin 
        echo "Script installed and configured." # Instalation finish message
    else
        sleep 0.4
        echo " Script installation aborted. exporting..." # Abort Message
        sleep 2
    fi
fi
}
# Function to perform a scan on the specified directory
function perform_scan() {
    { colors; reset_color; textAttributes; }
    local directory=$1 
    printf "${BLUE}[${RESETBG}+${BLUE}]${RESETBG} Scanning directory ${GREEN}$directory${RESETBG}..." # Scanning Message
    if [[ -d $directory ]]; then
        sudo clamscan -r --bell -i "$directory"
        sleep 0.2
        printf "${GREEN}[${RESETBG}-${GREEN}]${RESETBG} Directory scan completed."
    else 
        printf "${RED}[${RESETBG}!${RED}]${RESETBG} Directory not found."
    fi
}

function scan_dir() {
    { colors; reset_color; textAttributes; }
    # Prompt the user for the directory to scan
    read -p "Enter the directory to scan: " scan_directory # Read User inputed directory 
    # Check if the directory exists
    if [ -d "$scan_directory" ]; then
        perform_scan "$scan_directory" # Perform scan on inputed directory
    else
        echo "Directory $scan_directory does not exist. Exiting." # Error Message
        exit 1
    fi
}

function clamInstallMenu() {
    { colors; reset_color; textAttributes; }
    { printf " If you want to have fully usable tool you need to download pre-made scripts."; reset_color; echo ""; }
    clamCheck # Menu
}

function networkInterface() {
    # Define the network interface to monitor
    NETWORK_INTERFACE="eth0"
}
function patterns() {
# Define the suspicious packet patterns to look for
    SUSPICIOUS_PATTERNS=(
        "0x4500"  # IP protocol version 4
        "0x0000"  # IP header length of 0
        "0x0000"  # Type of service 0
        "0x0000"  # IP header checksum 0
        "0x0000"  # Source IP address 0.0.0.0
        "0x0000"  # Destination IP address 0.0.0.0
        "0x0000"  # Source port 0
        "0x0000"  # Destination port 0
        "0x0000"  # Sequence number 0
        "0x0000"  # Acknowledgement number 0
        "0x0000"  # Data offset 0
        "0x0000"  # Flags 0
        "0x0000"  # Window size 0
        "0x0000"  # Checksum 0
        "0x0000"  # Urgent pointer 0
        "0x0000"  # Options 0
    )
}

# Function to convert hexadecimal to binary
hex2bin() {
    echo "obase=2; ibase=16; $1" | bc
}

# Function to check if a packet matches the suspicious patterns
is_suspicious() {
    local packet="$1"
    local suspicious=0
    for pattern in "${SUSPICIOUS_PATTERNS[@]}"; do
        if ! echo "$packet" | grep -q "$pattern"; then
            suspicious=1
            break
        fi
    done
    return $suspicious
}

function startRealTimeCap() {
    # Start capturing packets in real-time
    tcpdump -i $NETWORK_INTERFACE -A | while read -r line; do
        # Convert the hexadecimal packet data to binary
        binary_packet=$(echo "$line" | sed -n 's/^\([0-9a-f]\{2\}\)/\1\n/;P;D' | xargs | sed 's/ //g' | xxd -r -p | hex2bin)
        # Check if the packet is suspicious
        if is_suspicious "$binary_packet"; then
            echo "Suspicious packet detected: $line"
            # Perform further analysis or take action
        fi
    done
}

function scanAllDirs_txtfilemaker() {
    # Define the directory to scan (root by default)
    SCAN_DIR="/"
    # Output file to store the results
    OUTPUT_FILE="suspicious_files_and_dirs.txt"
    # Empty the output file if it exists
    > "$OUTPUT_FILE"
    sleep 1
    echo "Scanning for suspicious files and directories..."
    # Find hidden files and directories
    echo -e "\n[Hidden Files and Directories]" >> "$OUTPUT_FILE"
    find "$SCAN_DIR" -type f -name ".*" -print >> "$OUTPUT_FILE"
    find "$SCAN_DIR" -type d -name ".*" -print >> "$OUTPUT_FILE"
    # Find files with unusual permissions (777)
    echo -e "\n[Files with 777 Permissions]" >> "$OUTPUT_FILE"
    find "$SCAN_DIR" -type f -perm 0777 -print >> "$OUTPUT_FILE"
    # Find executable files in /tmp or /var/tmp
    echo -e "\n[Executable Files in /tmp or /var/tmp]" >> "$OUTPUT_FILE"
    find /tmp /var/tmp -type f -executable -print >> "$OUTPUT_FILE"
    # Find files with uncommon or suspicious extensions
    echo -e "\n[Files with Suspicious Extensions]" >> "$OUTPUT_FILE"
    find "$SCAN_DIR" -type f \( -name "*.exe" -o -name "*.bat" -o -name "*.scr" -o -name "*.pif" \) -print >> "$OUTPUT_FILE"
    # Find directories with unusual names (e.g., random strings)
    echo -e "\n[Directories with Unusual Names]" >> "$OUTPUT_FILE"
    find "$SCAN_DIR" -type d -regex '.*[0-9a-zA-Z]\{10,\}.*' -print >> "$OUTPUT_FILE"
    # Output summary
    echo -e "\nSuspicious files and directories have been listed in $OUTPUT_FILE"
}

function scanAllDirs() {
    while true; do
        { colors; reset_color; textAttributes; }
        read -p " ${DARKGREEN} Do you want to performe Real-Time Scanning? (Y/n) " userInput
        if [[ $userInput == "y" ]]; then
            # Define the directory to scan (root by default)
            SCAN_DIR="/"
            sleep 1
            echo ""
            printf " ${GREY} Scanning for suspicious files and directories...${RESETBG}"
            sleep 1
            # Find hidden files and directories
            echo ""
            echo -e " \n [Hidden Files and Directories]"
            echo ""
            sleep 2
            find "$SCAN_DIR" -type f -name ".*" -print
            find "$SCAN_DIR" -type d -name ".*" -print
            # Find files with unusual permissions (777)
            sleep 1
            echo ""
            echo -e "\n [Files with 777 Permissions]"
            echo ""
            sleep 2 
            find "$SCAN_DIR" -type f -perm 0777 -print
            # Find executable files in /tmp or /var/tmp
            sleep 1
            echo ""
            echo -e " \n [Executable Files in /tmp or /var/tmp]"
            echo ""
            sleep 2
            find /tmp /var/tmp -type f -executable -print
            # Find files with uncommon or suspicious extensions
            sleep 1
            echo ""
            echo -e " \n [Files with Suspicious Extensions]"
            echo ""
            sleep 2
            find "$SCAN_DIR" -type f \( -name "*.exe" -o -name "*.bat" -o -name "*.scr" -o -name "*.pif" \) -print
            # Find directories with unusual names (e.g., random strings)
            sleep 1
            echo ""
            echo -e " \n [Directories with Unusual Names]"
            echo ""
            sleep 2
            find "$SCAN_DIR" -type d -regex '.*[0-9a-zA-Z]\{10,\}.*' -print
            sleep 0.5
            echo ""
            echo -e " \n Scanning completed."
            echo ""
        else 
            echo ""
            printf " ${DARKGREEN} (<<) Returning to main menu." # Returning Message
            sleep 0.8 # Time sleep
            clear # Clear terminal
            mainMenu # Main menu
        fi
    done
}

function virusUpdates() {
    echo "Updating ClamAV virus definitions..."
    # Update the virus definitions using freshclam
    sudo freshclam
    # Check the status of the update
    if [ $? -eq 0 ]; then
        echo "ClamAV virus definitions updated successfully." # Update Message
    else
        echo "Failed to update ClamAV virus definitions." # Error message
    fi
}

function sophosUpdate() {
    # Log file path
    LOG_FILE="/var/log/sophos-update.log"
    # Update Sophos virus definitions
    echo " Updating Sophos Antivirus virus definitions..."
    /opt/sophos-av/bin/savupdate >> "$LOG_FILE" 2>&1
    # Check the exit status of savupdate
    if [ $? -eq 0 ]; then
        echo ""
        echo " Sophos Antivirus virus definitions updated successfully."
        echo ""
        sleep 1
        mainMenu
    else
        echo ""
        echo " Failed to update Sophos Antivirus virus definitions. Check the log file for details."
        echo ""
        sleep 2
        mainMenu
    fi
}

function downloadSophos() {
    toolName="Sophos" # Antivirus name
    printf " Sophos Antivirus is a cybersecurity solution designed to protect computers and networks from a wide range of digital threats,"
    printf " \n including viruses, malware, ransomware, spyware, and phishing attacks. "
    echo ""
    sleep 1
    read -p " Do you want to install $toolName? (Y/n) " userInput 
    if [[ $userInput == "y" ]]; then
        if ! command -v wget; then
            sudo apt-get install wget -y
            wget --version
            wget https://downloads.sophos.com/home-edition/sav-linux-free.tar.gz
            tar -xzvf sav-linux-free.tar.gz 
            cd sav-linux-free
            sudo ./install.sh
            sudo /opt/sophos-av/bin/savdctl enable
            clear
            sophosUpdate
        else
            sudo apt-get install wget -y
            wget --version
            wget https://downloads.sophos.com/home-edition/sav-linux-free.tar.gz
            tar -xzvf sav-linux-free.tar.gz 
            cd sav-linux-free
            sudo ./install.sh
            sudo /opt/sophos-av/bin/savdctl enable
            clear
            sophosUpdate
        fi
    else 
        echo ""
        printf " Installation has been aborted."
        echo ""
        sleep 1.2
        clear
        mainMenu
    fi
}

function clean_temp_dir() {
    # Define temp directories for Linux
    LINUX_TEMP_DIRS="/tmp /var/tmp $HOME/.cache"
    # Define temp directories for Windows (WSL or Git Bash)
    WINDOWS_TEMP_DIRS="/mnt/c/Users/$USER/AppData/Local/Temp /mnt/c/Windows/Temp"
    # Log file for the cleaning operation
    LOG_FILE="/var/log/clean_temp.log"
    DIR=$1
    if [ -d "$DIR" ]; then
        echo "Cleaning $DIR ..." | tee -a "$LOG_FILE"
        rm -rf "$DIR"/* 2>>"$LOG_FILE"
        echo "$(date): Cleaned $DIR" | tee -a "$LOG_FILE"
    else
        echo "Directory $DIR does not exist, skipping..." | tee -a "$LOG_FILE"
    fi
}

function cleann() {
    echo ""
    read -p " Do you want to start cleaning temp files? (Y/n) " userInput
    if [[ $userInput == "y" ]]; then
        echo ""
        echo " Starting cleanup process..." | tee -a "$LOG_FILE"
        echo " ------------------------------------" | tee -a "$LOG_FILE"
        sleep 1
        # Detect if the script is running on Windows (WSL/Git Bash) or Linux
        if grep -q Microsoft /proc/version > /dev/null 2>&1 || uname -r | grep -q "WSL" > /dev/null 2>&1; then
            echo "Detected Windows environment (WSL or Git Bash)" | tee -a "$LOG_FILE"
            for DIR in $WINDOWS_TEMP_DIRS; do
                clean_temp_dir "$DIR"
            done
        else
            echo "Detected Linux environment" | tee -a "$LOG_FILE"
            for DIR in $LINUX_TEMP_DIRS; do
                clean_temp_dir "$DIR"
            done
        fi
        echo " Cleanup process completed." | tee -a "$LOG_FILE"
        echo " ------------------------------------" | tee -a "$LOG_FILE"
        sleep 1
        clear
        mainMenu
    else
        echo ""
        printf " Cleaning temp files has been aborted."
        echo ""
        sleep 1
        clear
        mainMenu
    fi
}

function log_message() {
        echo "$(date): $1" >> "$LOG_FILE"
    }

function sysMon() {
    echo ""
    read -p " Do you want to start system monitoring? (Y/n) " userr
    if [[ $userr == "y" ]]; then
        # Log system hostname
        log_message " System hostname: $(hostname)"
        # Log current date and time
        log_message " Current date and time: $(date)"
        # Log CPU usage
        log_message " CPU Usage:"
        sudo top -bn1 | grep "Cpu(s)" 
        # Log memory usage
        log_message " Memory Usage:"
        sudo free -h
        # Log disk space usage
        log_message " Disk Space Usage:"
        sudo df -h 
        # Log top 5 processes by memory usage
        log_message " Top 5 Processes by Memory Usage:"
        ps aux --sort=-%mem | head -n 6 
        # Log network statistics
        log_message " Network Statistics:"
        sudo ifstat -i eth0 1 1 || netstat -i 
        # Log system uptime
        log_message " System Uptime:"
        sudo uptime 
        # Log system load averages
        log_message " Load Averages:"
        sudo uptime | awk -F'load average: ' '{ print $2 }' 
        log_message " System monitoring completed."
        echo ""
        read -p " Do you want to exit to main menu? (Y/n) " userInput
        if [[ $userInput == "y" ]]; then
            echo ""
            printf " Returning to main menu."
            echo ""
            sleep 1.1
            clear
            mainMenu
        else     
            echo ""
            printf " Choice has been aborted."
            echo ""
            clear
            mainMenu
        fi
    else
        echo ""
        printf " Choice has been aborted."
        echo ""
        sleep 1.1
        clear
        mainMenu
    fi
}

function menu1() {
    while true; do
        { colors; reset_color; textAttributes; } 
        echo ""
        printf " ${GREY}Enter ${DARKGREEN}'exit'${GREY} to go back to main menu"
        echo ""
        read -p "${DARKGREEN} (=>) Enter victims ipaddress :${GREEN} " userInput
        if [[ $userInput == "exit" ]]; then
            echo ""
            printf "${DARKGREEN} (<<) Exiting"
            sleep 1
            clear
            mainMenu
        fi
        sleep 1
        if ! command -v nmap &> /dev/null; then
            sudo apt-get install nmap -y
        fi
        echo ""
        printf " ${DARKGREEN}[ Checking Entered IpAddress ]"
        echo ""
        sudo nmap $userInput
    done
}

function menu2() {
    { colors; reset_color; textAttributes; }
    clear
    scanAllDirs # Menu
}

function menu3() {
    { colors; reset_color; textAttributes; }
    clear
    downloadSophos
}

function menu4() {
    { colors; reset_color; textAttributes; }
    clear
    cleann
}

function menu5() {
    { colors; reset_color; textAttributes; }
    clear
    sysMon
}

function aboutMenu() {
    { colors; reset_color; textAttributes; }
    clear
    aboutLogo
    echo ""
    echo ""
    { printf "  ${BLUEBG} About:${RESETBG}"; reset_color; echo "";}
    echo ""
    { printf "          Tool made by GreyHat declaration and organization better known as ZeroByte"; reset_color; echo ""; }
    { printf "          Umbrela 1.0 is Linux-Based antivirus tool that contains several ways of protecting your machine from viruses"; reset_color; echo ""; }
    { printf "          More about tool at README markdown on https://github.com/tkemza/umbrela.git"; reset_color; echo ""; }
    echo ""
    { printf "  ${REDBG} Warning:${RESETBG}"; reset_color; echo "";}
    echo ""
    { printf "          The creator will not bear the consequences if the tool is used for unwanted purposes"; reset_color; echo ""; }
    echo ""
    echo ""
    read -p " (press an key to continue) " usercon
    clear
    mainMenu
}

function mainMenu() {
    { colors; reset_color; textAttributes; }
    { main_logo; logoDownAbout; }
    echo ""
    { printf "          ${RED}[${RESETBG}01${RED}]${DARKGREEN} IP Scanning"; reset_color; echo ""; } # Choice 1
    { printf "          ${RED}[${RESETBG}02${RED}]${DARKGREEN} Real-Time Scanning"; reset_color; echo ""; } # Choice 2
    { printf "          ${RED}[${RESETBG}03${RED}]${DARKGREEN} Virus Definition Updates (Sophos)"; reset_color; echo ""; } # Choice 3
    { printf "          ${RED}[${RESETBG}04${RED}]${DARKGREEN} Removal/Cleaning"; reset_color; echo ""; } # Choice 4
    { printf "          ${RED}[${RESETBG}05${RED}]${DARKGREEN} System Monitoring"; reset_color; echo ""; } # Choice 5
    echo ""
    echo ""
    { printf "          ${RED}[${RESETBG}99${RED}]${DARKGREEN} About Tool"; reset_color; echo ""; } # About Tool 
    { printf "          ${RED}[${RESETBG}00${RED}]${DARKGREEN} Abort Tool"; reset_color; echo ""; } # Exit Tool 
    echo ""
    echo ""
    read -p " ${RED}[${RESETBG}+${RED}]${BLUE} Enter choice :${RESETBG} " userChoice
    case $userChoice in 
        1 | 01)
            { colors; reset_color; textAttributes; }
            { clear; menu1; }
            ;;
        2 | 02)
            { colors; reset_color; textAttributes; }
            { clear; menu2; }
            ;;
        3 | 03)
            { colors; reset_color; textAttributes; }
            { clear; menu3; }
            ;;
        4 | 04)
            { colors; reset_color; textAttributes; }
            { clear; menu4; }
            ;;
        5 | 05)
            { colors; reset_color; textAttributes; }
            { clear; menu5; }
            ;;
        6 | 06)
            { colors; reset_color; textAttributes; }
            { clear; menu6; }
            ;;
        99)
            { colors; reset_color; textAttributes; }
            { clear; aboutMenu; }
            ;;
        0 | 00)
            { colors; reset_color; textAttributes; }
            echo ""
            { printf "${RED}[${RESETBG}!${RED}]${RESETBG} Tool Aborted."; reset_color; sleep 1.5; echo ""; clear; exit 0; }
            ;;
        *)
            { colors; reset_color; textAttributes; }
            echo ""
            { printf "${RED}[${RESETBG}!${RED}]${RESETBG} Invalid input."; reset_color; sleep 1.5; clear; mainMenu; }
    esac 
}

function main() {
    { colors; reset_color; textAttributes; }
    { clear; start_menu; clear; clamInstallMenu; clear; mainMenu; }
}

# Main
main
