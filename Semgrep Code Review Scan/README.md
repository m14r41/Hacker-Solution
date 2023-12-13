# Semgrep Scan
## Install

```bash
wget https://github.com/m14r41/Hacker-Solution/blob/main/Semgrep%20Code%20Review%20Scan/scanSemgrep.sh

chmod +x scanSemgrep.sh
mv scanSemgrep.sh scanSemgrep
sudo mv scanSemgrep /usr/local/bin/
echo -e "\033[0;31mYou've Installed scanSemgrep\033[0m"

```

The Bash script utilizes ANSI color codes to create a visually appealing menu-driven interface. It facilitates Semgrep scans with various configurations, featuring dynamic elements such as blinking boxes. Users choose from options, including custom Semgrep commands. Post-execution, the script organizes output files into a designated folder, displaying a completion message. Semgrep must be installed, and the script assumes `semgrep` is in the system's PATH.

![image](https://github.com/m14r41/Hacker-Solution/assets/95265573/7bb49aa9-3d40-4158-8974-c0ca19c95ba0)


