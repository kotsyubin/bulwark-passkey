# Bulwark Passkey

This is the repo for the frontend of [Bulwark Passkey](https://bulwark.id)

## Building by yourself
### Installing distro-specific packages
Debian/Ubuntu
```
sudo apt install build-essential protobuf-compiler pkg-config libwebkit2gtk-4.0-dev libgtk-3-dev libglib2.0-dev autogen autoconf libtool m4 automake pkg-config libtool intltool-debian libwebkit2gtk usbip npm
```
### Arch Linux
```
sudo pacman -Sy base-devel protobuf pkgconf webkit2gtk-4.1 glib2 gtk3 autogen autoconf m4 automake usbip npm
```
### Installing other deps
```
sudo npm install -g protoc-gen-js protoc-gen-ts
wget https://go.dev/dl/go1.26.2.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.26.2.linux-amd64.tar.gz
echo "PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
echo "PATH=$PATH:$(go env GOPATH)/bin"  >> ~/.bashrc
source ~/.bashrc
go install github.com/wailsapp/wails/v2/cmd/wails@latest
go install github.com/golang/protobuf/protoc-gen-go@latest
```
### Building
```
git clone https://github.com/kotsyubin/bulwark-passkey.git
cd bulwark-passkey && make output-Linux && make dpkg
```