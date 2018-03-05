# encoding: utf-8

# Inspec test for recipe learn_chef_cookbook::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# for more info on resprce types go to http://serverspec.org/resource_types.html
unless os.windows?
# This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

describe package ('java-1.7.0-openjdk-devel') do
  it { should be_installed }
end 

describe group ('tomcat') do
  it { should exist }
end 
describe user ('tomcat') do
  it { should exist }
end

describe file('/opt/tomcat') do
  it { should be_directory }
  it { should be_owned_by 'root' }
end
