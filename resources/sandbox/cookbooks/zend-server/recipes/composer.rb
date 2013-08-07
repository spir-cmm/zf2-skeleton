include_recipe "zend-server::server"

package "curl"

execute "Installing composer" do
  command "curl -s https://getcomposer.org/installer | /usr/local/zend/bin/php && mv composer.phar /usr/local/bin/composer"
  action :run
  not_if { ::File.exists?("/usr/local/bin/composer") }
end


if ::File.exists?("/vagrant/composer.json") then
  execute "Executing composer" do
    command "cd /vagrant && /usr/local/bin/composer self-update && /usr/local/bin/composer update"
    action :run
  end
end