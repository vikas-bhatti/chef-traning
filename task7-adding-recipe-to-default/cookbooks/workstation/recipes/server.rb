#
# Cookbook:: workstation
# Recipe:: server.rb
#
# Copyright:: 2021, The Authors, All Rights Reserved.
package 'httpd' do
    action :remove
end

package 'httpd' do
    action :install
end

service 'httpd' do 
    action [:enable, :start]
end

file '/var/www/html/index.html' do
    content 'webserver to create new recipe for task7'
    owner 'root'
    group 'root'
    mode '0755'
    action :create
end

