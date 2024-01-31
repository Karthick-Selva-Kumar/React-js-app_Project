#installing java:
apt-get update
apt-get install -y openjdk-11-jre


#installing docker:
apt-get update
apt-get install -y docker.io


#installing docker-compose:
apt-get update
apt-get install -y docker-compose 


#installing jenkins:
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install -y jenkins


#checking the installed services:
echo "-------------------------------------------"
echo "-------------------------------------------"
echo "-------------------------------------------"
echo "This is the Java package - "
java --version
echo "-------------------------------------------"
echo "This is Jenkins package - "
jenkins --version
echo "-------------------------------------------"
echo "This is Docker package - "
docker --version
echo "-------------------------------------------"
echo "This is Docker package - "
docker-compose --version
