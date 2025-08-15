📌 How to Run

Save this script as macos-setup.sh

Make it executable:

chmod +x macos-setup.sh


Run it:

./macos-setup.sh







2️⃣ Enable Universe Repository (more themes available)
sudo add-apt-repository universe
sudo apt update

3️⃣ Install GNOME Tweaks & Extensions
sudo apt install gnome-tweaks gnome-shell-extensions


This lets you customize fonts, icons, shell, and UI elements.

4️⃣ Install a macOS-like Theme

Theme: WhiteSur GTK Theme (best macOS Big Sur/Monterey look).

Icons: WhiteSur Icon Pack or McMojave.

Install Example (WhiteSur):

sudo apt install git
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
./install.sh


Icons:

git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
./install.sh

5️⃣ Add a macOS-style Dock

Dash to Dock extension:

sudo apt install gnome-shell-extension-dash-to-dock


Or Plank Dock (super lightweight):

sudo apt install plank

6️⃣ Change Fonts & Cursor

Fonts: Use SF Pro Display (Apple font) — you can download from developer.apple.com.

Cursor: Capitaine Cursors:

sudo apt install capitaine-cursors

7️⃣ Enable Rounded Corners & Transparency

Install Blur My Shell from GNOME Extensions website.

Install Rounded Window Corners.

8️⃣ Apply Changes in GNOME Tweaks

Appearance → Set Applications, Shell, and Icons to WhiteSur.

Extensions → Enable Dash to Dock or Plank.

Set Dock to bottom, macOS-style.
