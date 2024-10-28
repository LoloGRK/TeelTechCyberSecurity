# Docker installation

```
apt update
apt-get install -y ca-certificates curl gnupg libnss3-tools jq wget
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
chmod a+r /etc/apt/keyrings/docker.gpg
_DISTRO=$(lsb_release -i | awk '{print $3}')
if [ ${_DISTRO} == "Ubuntu" ]; then
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu "$(. /etc/os-release && echo \"$VERSION_CODENAME\")" stable" | tee /etc/apt/sources.list.d/docker.list
elif [ ${_DISTRO} == "Debian" ]; then
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(. /etc/os-release && echo \"$VERSION_CODENAME\") stable" | tee /etc/apt/sources.list.d/docker.list
fi
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```