
execute "Installing sass package" do
  command "/opt/vagrant_ruby/bin/gem install sass"
  action :run
  not_if { ::File.exists?("/opt/vagrant_ruby/bin/sass") }
end