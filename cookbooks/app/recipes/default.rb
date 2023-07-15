#
# Cookbook:: app
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

 execute "run-flask-apk"  do
 	command 'nohup python3 app.py > /dev/null 2>&1 &'
 	cwd '/home/ubuntu/app/'
 	user 'root'
 	action :run
 end

