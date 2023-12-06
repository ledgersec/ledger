Python Environment Setup Instructions
This document provides instructions on how to set up your Python environment to run the provided Python script. Follow the steps according to your operating system.


* For macOS and Linux Users
	# Run the Setup Script:

		- Open a terminal window.
		- Navigate to the directory containing the mac_linux_setup.sh script.
		- Run the script by typing the following command and pressing Enter:  bash mac_linux_setup.sh

	# Possible Issues:

		If you encounter any errors during the script execution, you may need to install Python and the required packages manually.


* For Windows Users
	#Run the Setup Script:

		-Open PowerShell as an administrator.
		-Navigate to the directory containing the windows_setup.ps1 script.
		-Run the script by typing the following command and pressing Enter:   .\windows_setup.ps1
	#Possible Issues:

		-If you encounter any errors during the script execution or if your system's security settings prevent the script from running, you may need to install Python and the required packages manually.
* Manual Installation
	If the automated setup scripts fail or you prefer to install Python manually, follow the instructions below for your operating system:

	#macOS:
		#Install Python:

			-The recommended way to install Python on macOS is through Homebrew. Install Homebrew by following the instructions at https://brew.sh/.
			-Once Homebrew is installed, install Python by running: brew install python
		Install Packages:

			-Install required packages using pip:
			-pip3 install -r requirements.txt
	# Linux (Debian/Ubuntu):
		#Install Python:
			-Open a terminal and update your package list:  sudo apt-get update
		#Install Python 3:
			-sudo apt-get install python3
		#Install Packages:
			-Install required packages using pip:  pip3 install -r requirements.txt
	#Windows:
		#Install Python:
			-Download the Python installer from the official Python website: https://www.python.org/downloads/windows/.
			-Run the installer. Ensure to check the option "Add Python to PATH" during installation.
		#Install Packages:
			-pip install -r requirements.txt
* Additional Notes:
	-Ensure that you have administrative privileges if required during the installation.
	-Always download Python from the official website or trusted sources.
	-If you encounter any issues, refer to the official Python documentation or seek help from Python community forums.

