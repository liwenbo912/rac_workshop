#!/bin/bash

# Script to download and install Intel RealSense SDK debs for Ubuntu Jammy

set -e  # Exit on any error

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
