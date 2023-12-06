#!/bin/bash

# Function to install Python on macOS
install_python_mac() {
    echo "Installing Python on macOS..."
    # Install Python using Homebrew
    brew install python3
}

# Function to install Python on Linux
install_python_linux() {
    echo "Installing Python on Linux..."
    # Install Python (Debian/Ubuntu)
    sudo apt-get update
    sudo apt-get install python3
}

# Function to check and install Python packages
install_packages() {
    echo "Installing required Python packages..."
    pip3 install -r requirements.txt
}

# Check the Operating System
OS="$(uname)"
case "$OS" in
    "Darwin")
        echo "OS is macOS."
        # Check if Python is installed on macOS
        if ! command -v python3 &> /dev/null; then
            install_python_mac
        else
            echo "Python is already installed."
        fi
        ;;

    "Linux")
        echo "OS is Linux."
        # Check if Python is installed on Linux
        if ! command -v python3 &> /dev/null; then
            install_python_linux
        else
            echo "Python is already installed."
        fi
        ;;

    *)
        echo "Unsupported Operating System: $OS"
        exit 1
        ;;
esac

# Check if pip is installed
if ! command -v pip3 &> /dev/null; then
    echo "pip is not installed. Installing pip..."
    # Install pip
fi

# Install required Python packages
install_packages

