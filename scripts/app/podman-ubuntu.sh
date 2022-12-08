set -e

echo "Enter Password"
sudo echo ""

echo "Installing Podman..."

source /etc/os-release
sudo -- sh -c "echo 'deb http://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list"
sudo -- sh -c "wget -nv https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable/xUbuntu_${VERSION_ID}/Release.key -O- | apt-key add -"

sudo apt-get update -y
sudo apt-get -y install podman

podman --version
