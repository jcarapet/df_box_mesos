#
# Cookbook Name:: df_box_mesos
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

bash 'install mesos' do 
	code <<-EOH
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF
DISTRO=$(lsb_release -is | tr '[:upper:]' '[:lower:]')
CODENAME=$(lsb_release -cs)
echo "deb http://repos.mesosphere.io/${DISTRO} ${CODENAME} main" | \
  sudo tee /etc/apt/sources.list.d/mesosphere.list
sudo apt-get -y update
sudo apt-get -y install mesos marathon
sudo service zookeeper restart
sudo service mesos-master start
sudo service mesos-slave start
sudo service marathon start
EOH
end

include_recipe "docker::default"

directory "/etc/mesos-slave" do 
	recursive true
	action :create
end

file "/etc/mesos-slave/containerizers" do 
	content "docker,mesos"
	action :create
end

file "/etc/mesos-slave/executor_registration_timeout" do 
	content "5mins"
	action :create 
end



