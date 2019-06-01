DIRECTORY=$(cd `dirname $0` && pwd)
echo $DIRECTORY

cd $DIRECTORY

#install dependencies
apt-get update
apt-get install python-dev libffi-dev python-pip -y

#install ansible
pip install --upgrade markupsafe setuptools ansible==2.0.2.0

echo Installing Wishful
ansible -i wishful/inventory wishful/install-wishful.yml
