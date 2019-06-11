set -e

#install dependencies
sudo apt-get update
sudo apt-get install python-dev libffi-dev python-pip -y

#install ansible
sudo pip install --upgrade markupsafe setuptools ansible==2.0.2.0

echo Installing Wishful
DIRECTORY=$(cd `dirname $0` && pwd)
echo $DIRECTORY

cd "$DIRECTORY/wishful"
ansible-playbook -i inventory install-wishful.yml
