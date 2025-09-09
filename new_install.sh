# Installs: Git, Python3, venv, pip, build tools, VSCode, rac_workshop repo, requirements
set -e # Exit on error

echo "==> Updating system..."
sudo apt update
sudo apt -y upgrade

echo "==> Installing Git, Python, venv, pip, and build tools..."
sudo apt install -y git wget build-essential python3 python3-venv python3-pip

echo "==> Downloading and installing Visual Studio Code..."
wget -qO /tmp/vscode.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
sudo apt install -y /tmp/vscode.deb
rm /tmp/vscode.deb

echo "==> Cloning rac_workshop repository..."
cd "$HOME"
if [ ! -d rac_workshop ]; then
    git clone https://github.com/HKUArmStrong/rac_workshop.git
fi
cd rac_workshop

echo "==> Creating Python virtual environment..."
python3 -m venv venv

echo "==> Activating virtual environment and installing requirements..."
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements-linux-cpu.txt

echo ""
echo "========================================"
echo "Setup complete!"
echo "To start working:"
echo " source ~/rac_workshop/venv/bin/activate"
echo " code ~/rac_workshop"
echo "========================================"