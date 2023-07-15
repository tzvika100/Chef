#! /bin/bash
sudo su
git clone https://github.com/tzvika100/chef.git
#cd chef
chef-solo -c chef/solo.rb -j chef/runlist.json --chef-license=accept
