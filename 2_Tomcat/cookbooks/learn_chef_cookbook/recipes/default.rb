package 'java-1.7.0-openjdk-devel'

group 'tomcat'

user 'tomcat' do 
 manage_home false
 shell '/bin/nologin'
 group 'tomcat'
 home '/opt/tomcat/'
end

remote_file 'apache-tomcat-8.0.50.tar.gz' do
 source 'http://apache.cs.utah.edu/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz'
end


execute 'mkdir -p /opt/tomcat'
execute 'tar xvf apache-tomcat-8.0.50.tar.gz -C /opt/tomcat --strip-components=1'

directory '/opt/tomcat/' 
execute 'sudo chgrp -R tomcat /opt/tomcat'
execute 'sudo chmod -R g+r /opt/tomcat/conf'
execute 'sudo chmod g+x /opt/tomcat/conf'
execute 'sudo chown -R tomcat /opt/tomcat/webapps/ /opt/tomcat/work/ /opt/tomcat/temp/ /opt/tomcat/logs/'

template '/etc/systemd/system/tomcat.service' do
 source 'tomcat-service.erb'
end

execute 'systemctl daemon-reload' 

service 'tomcat' do 
 action [:start, :enable]
end
