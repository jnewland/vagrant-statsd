cookbook_file "/tmp/nodejs-0.5.4_amd64.deb" do
  mode 0755
end

dpkg_package "node" do
  action :install
  source "/tmp/nodejs-0.5.4_amd64.deb"
end