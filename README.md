zf2-skeleton
============

Cd to the repository root folder and run : 

You must edit the `Vagrantfile` to edit the ip address you want to set for the vm.
find the `config.vm.network :private_network, ip: "xxx.xxx.xxx.xxx"` config line and
set the ip address you want to use in your own private network.
Eventually comment unused chef cookbook recipe and run :

`vagrant up`

After the vm is up, you could ssh it like this :

`vagrant ssh`

In the vm you have to update dependencies with composer :

cd to the `/vagrant` folder (the shared folder of the repository) and run :

`composer self-update`

folowed by :

`composer update`

At this time the vm is up and the skeleton application is accessible via the ip address you set in the
`Vagrantfile`.

If you do not comment the Zend Server recipe (`chef.add_recipe "zend-server"`) you could access it on 
the 10081 tcp port, like this :

`http://my.own.ip.address:10081`

If you prefere use a domain name, edit your `hosts` file to define it.
