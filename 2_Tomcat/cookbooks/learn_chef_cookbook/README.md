# learn_chef_cookbook

TO RUN :  sudo chef-client --local-mode --runlist 'recipe[learn_chef_cookbook]'


To test using inspec

RUN : inspec exec test/smoke/default/default_test.rb

# Sample Output :
Profile: tests from test/smoke/default/default_test.rb
Version: (not specified)
Target:  local://


  User root
     ↺
  Port 80
     ↺
  System Package
     ✔  java-1.7.0-openjdk-devel should be installed
  Group tomcat
     ✔  should exist
  User tomcat
     ✔  should exist
  File /opt/tomcat
     ✔  should be directory
     ✔  should be owned by "root"

Test Summary: 5 successful, 0 failures, 2 skipped


