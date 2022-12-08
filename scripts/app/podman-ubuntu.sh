set -e

echo "Enter Password"
sudo echo ""

sudo --sh -c '
  echo "Installing Podman..."

  source /etc/os-release
  sh -c "echo 'deb http://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list"
  Next, download and add the GPG key with the following command:

  wget -nv https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable/xUbuntu_${VERSION_ID}/Release.key -O- | apt-key add -
  Next, update the repository and install Podman with the following command:

  apt-get update -qq -y
  apt-get -qq --yes install podman
'

podman --version
