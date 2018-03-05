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


execute 'mkdir /opt/tomcat'
execute 'tar xvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1'
