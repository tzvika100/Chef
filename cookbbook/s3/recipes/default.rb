#
# Cookbook:: s3
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

remote_file_s3 '/home/tzvi/app/apk' do
	bucket 'my-storage-apk'
        remote_path 'app/'
        aws_access_key_id 'xxxxxxxxxxxxxxxxxxxxxxxx'
        aws_secret_access_key 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
        region 'us-west-2'
        action :create
end
