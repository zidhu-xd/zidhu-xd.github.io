#!/bin/bash
# Ubuntu macOS Transformation Script
# Tested on Ubuntu 24.04 LTS & 25.04

echo "🔄 Updating system..."
sudo apt update && sudo apt upgrade -y

echo "📦 Installing required packages..."
sudo apt install -y gnome-tweaks gnome-shell-extensions plank git curl unzip

echo "🌐 Enabling Universe repository..."
sudo add-apt-repository universe -y
sudo apt update

echo "🎨 Installing WhiteSur GTK theme..."
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
./install.sh -c Dark -i ubuntu
cd ..
rm -rf WhiteSur-gtk-theme

echo "🖼 Installing WhiteSur icon theme..."
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
./install.sh
cd ..
rm -rf WhiteSur-icon-theme

echo "🖱 Installing Capitaine Cursors..."
sudo apt install -y capitaine-cursors

echo "📂 Setting up Plank Dock..."
mkdir -p ~/.config/autostart
cat <<EOF > ~/.config/autostart/plank.desktop
[Desktop Entry]
Type=Application
Exec=plank
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Plank Dock
EOF

echo "🔍 Installing GNOME Extensions for blur & rounded corners..."
# Blur My Shell
gnome-extensions install https://extensions.gnome.org/extension-data/blur-my-shell_aunetx.v54.shell-extension.zip
# Rounded Window Corners
gnome-extensions install https://extensions.gnome.org/extension-data/rounded-window-corners_yilozt.v49.shell-extension.zip

echo "✅ All done!"
echo "💡 Now open 'GNOME Tweaks' → Appearance to set:"
echo "   - Applications: WhiteSur-Dark"
echo "   - Icons: WhiteSur"
echo "   - Cursor: Capitaine"
echo "   - Enable Plank Dock for macOS style"
echo "✨ Reboot to see full changes."
