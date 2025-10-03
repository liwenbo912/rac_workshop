#!/bin/bash

# Script to download and install Intel RealSense SDK debs for Ubuntu Jammy

set -e  # Exit on any error

echo "Installing dependencies..."

# Make Ubuntu up-to-date including the latest stable kernel
echo "Updating Ubuntu..."
sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade

# Install the core packages required to build librealsense binaries and the affected kernel modules
echo "Installing core packages..."
sudo apt-get install libssl-dev libusb-1.0-0-dev libudev-dev pkg-config libgtk-3-dev

# Cmake Note: certain librealsense CMAKE flags (e.g. CUDA) require version 3.8+ which is currently not made available via apt manager for Ubuntu LTS.

# Install build tools
echo "Installing build tools..."
sudo apt-get install git wget cmake build-essential

# Prepare Linux Backend and the Dev. Environment
# Unplug any connected RealSense camera and run:
echo "Please unplug any connected RealSense camera before proceeding."
echo "Installing backend packages..."
sudo apt-get install libglfw3-dev libgl1-mesa-dev libglu1-mesa-dev at

echo "Dependencies installed. Proceeding with RealSense SDK installation..."

# URL of the zip file
ZIP_URL="https://github.com/IntelRealSense/librealsense/releases/download/v2.57.3/librealsense2_jammy_x86_debians_2_57_3_beta.zip"

# Temporary directory for download and extraction
TEMP_DIR="/tmp/realsense_install"
ZIP_FILE="$TEMP_DIR/librealsense2_jammy_x86_debians_2_57_3_beta.zip"

# Create temp directory
mkdir -p "$TEMP_DIR"

# Download the zip file
echo "Downloading RealSense SDK debs..."
wget -O "$ZIP_FILE" "$ZIP_URL"

# Unzip the file
echo "Extracting debs..."
unzip "$ZIP_FILE" -d "$TEMP_DIR"

# Find and install all .deb files
echo "Installing debs..."
sudo dpkg -i "$TEMP_DIR"/*.deb

# Clean up
echo "Cleaning up..."
rm -rf "$TEMP_DIR"

echo "Installation completed successfully."
