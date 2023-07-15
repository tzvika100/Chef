#! /bin/bash
sudo su
cd /home/ubuntu/chef
git pull origin main
sudo chef-solo -c /home/ubuntu/chef/solo.rb -j /home/ubuntu/chef/runlist.json --chef-license=accept

