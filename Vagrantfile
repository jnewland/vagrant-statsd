def chef_box(config, name, ip, run_list, orgname)
  config.vm.define name do |my_box|
    my_box.vm.box = 'lucid64'
    my_box.vm.network(ip)
    my_box.vm.provision :chef_client do |chef|
 
      # Set up some organization specific values based on environment variable above.
      chef.chef_server_url = "https://api.opscode.com/organizations/#{orgname}"
      chef.validation_key_path = "#{ENV['HOME']}/.chef/#{orgname}-validator.pem"
      chef.validation_client_name = "#{orgname}-validator"

      # Change the node/client name for the Chef Server
      chef.node_name = name

      # Put the client.rb in /etc/chef so chef-client can be run w/o specifying
      chef.provisioning_path = "/etc/chef"

      # logging
      chef.log_level = :info

      # adjust the run list to suit your testing needs
      chef.run_list = run_list
    end
  end
end

Vagrant::Config.run do |config|
  chef_box(config, 'statsd', '33.33.33.10', ['role[statsd]'], 'jnewland')
end