#file '/etc/yum.repos.d/mongodb-org-3.6.repo' do
#  content '[mongodb-org-3.6]
#name=MongoDB Repository
#baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.6/x86_64/
#gpgcheck=1
#enabled=1
#gpgkey=https://www.mongodb.org/static/pgp/server-3.6.asc
#'
#  source 'out.repo.erb'
#end#

package 'java-1.7.0-openjdk-devel'

#service 'mongod' do
#  action [:enable, :start]
#end

# Cookbook:: mongodb
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
