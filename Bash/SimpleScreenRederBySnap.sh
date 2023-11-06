#!/bin/bash

# Ensure the Snapd service is running
if ! systemctl is-active --quiet snapd; then
    echo "Starting Snapd service..."
    sudo systemctl start snapd
fi

# Enable the Snapd service to start at boot
if ! systemctl is-enabled --quiet snapd; then
    echo "Enabling Snapd service to start at boot..."
    sudo systemctl enable snapd
fi

# Reload the Snapd socket
echo "Reloading Snapd socket..."
sudo systemctl restart snapd.socket

# Install simplescreenrecorder
echo "Installing simplescreenrecorder..."
sudo snap install simplescreenrecorder

# Verify installation
if snap list | grep -q simplescreenrecorder; then
    echo "simplescreenrecorder is installed successfully."
else
    echo "Installation failed."
fi
