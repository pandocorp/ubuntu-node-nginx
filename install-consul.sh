architecture=`uname -m`
echo $architecture

export CONSUL_VERSION="1.9.4"
export CONSUL_URL="https://releases.hashicorp.com/consul"

if [ "$architecture" = 'aarch64' ];
then
  echo "inside-"$architecture
  wget https://releases.hashicorp.com/consul/1.9.4/consul_1.9.4_linux_arm64.zip
  unzip consul_1.9.4_linux_arm64.zip
  rm consul_1.9.4_linux_arm64.zip
else
  echo "inside-"$architecture
  wget https://releases.hashicorp.com/consul/1.9.4/consul_1.9.4_linux_amd64.zip
  unzip consul_1.9.4_linux_amd64.zip
  rm consul_1.9.4_linux_amd64.zip
fi
chown root:root consul
mv consul /usr/bin/
