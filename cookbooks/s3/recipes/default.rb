#
# Cookbook:: s3
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

version = node["s3"]["version"]

if !Dir.exist?('/home/ubuntu/app')
	directory '/home/ubuntu/app' do
		recursive true
		action :create
	end
end

if Dir.exist?('/home/ubuntu/app')
	execute 'clean old version' do
        	command 'rm -r /home/ubuntu/app/*.rar'
    		ignore_failure true
  	end
end

remote_file_s3 "/home/ubuntu/app/#{version}.tar" do
	bucket 'my-storage-apk'
        remote_path "app/#{version}.tar"
        aws_access_key ''
        aws_secret_access_k ''
        region 'us-west-2'
        action :create
end

execute 'extract_artifact' do
  command "tar -xf /home/ubuntu/app/#{version}.tar -C /home/ubuntu/app"
  action :run
end

