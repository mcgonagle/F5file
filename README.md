# F5file
Agile Networking: Continuous Delivery of F5 BigIPs with Jenkins Pipeline as Code

1) Download Jenkins
```
wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
```

2) Start jenkins

```
java -jar jenkins.war
```

3) License Jenkins

4) Install Ansible Plugin and Slack Notification Plugin in Jenkins

5) Install Ansible, ansible-lint and ansible-review

```
sudo yum install -y gcc python27 python27-devel python27-pip

sudo yum install -y libffi-devel

sudo yum install -y openssl-devel

sudo /usr/bin/pip-2.7 install --upgrade ansible

sudo /usr/bin/pip-2.7 install ansible-lint

sudo /usr/bin/pip-2.7 install ansible-review 

sudo /usr/bin/pip-2.7 install bigsuds

sudo /usr/bin/pip-2.7 install f5-sdk
```

6) Install git
```
sudo yum install -y git

```

7) Create pipeline job
