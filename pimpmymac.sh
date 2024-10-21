#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to get the version of a command
get_version() {
    $1 --version 2>&1 | head -n 1
}

# Install Xcode Command Line Tools
echo "Installing Xcode Command Line Tools..."
if ! xcode-select --install 2>/dev/null; then
    echo "Xcode Command Line Tools already installed."
fi

# Wait until Xcode Command Line Tools are installed
until command_exists gcc; do
    echo "Waiting for Xcode Command Line Tools to be installed..."
    sleep 10
done

# Install Homebrew
echo "Installing Homebrew..."
if ! command_exists brew; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install MacPorts
echo "Installing MacPorts..."
if ! command_exists port; then
    if [[ "$(uname -m)" == "arm64" ]]; then
        curl -O https://distfiles.macports.org/MacPorts/MacPorts-2.7.2-11-BigSur-arm64.pkg
        sudo installer -pkg MacPorts-2.7.2-11-BigSur-arm64.pkg -target /
    else
        curl -O https://distfiles.macports.org/MacPorts/MacPorts-2.7.2-11-BigSur.pkg
        sudo installer -pkg MacPorts-2.7.2-11-BigSur.pkg -target /
    fi
fi

# Source profile to use Homebrew and MacPorts in the current session
source ~/.zprofile

# List of penetration testing tools to install
tools=(
    john
    hydra
    nikto
    sqlmap
    yara
    aircrack-ng
    binwalk
    radare2
    tcpdump
    wireshark
    foremost
    lynis
    afl-fuzz
    hashcat
    testssl
    exploitdb
    socat
    dsniff
    exiv2
    impacket
    netcat
    ffuf
    masscan
    gobuster
    sublist3r
    theharvester
    dnsenum
    dnsmap
    whatweb
    amass
    zmap
    recon-ng
    fierce
    wapiti
    xsser
    unicornscan
    sslscan
    bettercap
    beef-xss
    gdb
    metasploit
    burp-suite
)

# Install tools via Homebrew
echo "Installing pentesting tools via Homebrew..."
for tool in "${tools[@]}"; do
    echo "Now installing $tool via Homebrew..."
    brew install "$tool"
    echo "Finished installing $tool via Homebrew."
done

# Install tools via MacPorts
echo "Installing pentesting tools via MacPorts..."
for tool in "${tools[@]}"; do
    echo "Now installing $tool via MacPorts..."
    sudo port install "$tool"
    echo "Finished installing $tool via MacPorts."
done

# Check installations
echo "Checking installations..."
failed_installations=()
for tool in "${tools[@]}"; do
    if command_exists "$tool"; then
        version=$(get_version "$tool")
        echo "$tool installed successfully. Version: $version"
    else
        failed_installations+=("$tool")
    fi
done

if [ ${#failed_installations[@]} -eq 0 ]; then
    echo "All tools installed successfully."
else
    echo "The following tools failed to install: ${failed_installations[@]}"
    for tool in "${failed_installations[@]}"; do
        echo "$tool installation unsuccessful. Try manually installing by typing 'brew install $tool' or 'sudo port install $tool'."
    done
fi

# Final cleanup
echo "Cleaning up..."
brew cleanup
echo "Installation complete!"

