# Puppet guide to add a line to the bashrc file

#### this is a continuation of my startup guide to puppet. If you want to see that click the link to it: https://github.com/hengamer03/Puppet-guide-for-simple-installation 
## in this repo i will show how to easily add a line to the bashrc file. what this will do is run any command you have put onto it.
## for this i will be using cowsay from the previous guide


#### start off by making sure your connection from both master and client is up, and that the agent cant run a  ```puppet agent -t ```
#### after basic checks we can start.

#### go to the directory /etc/puppetlabs/code/environments/producation/modules 
#### create a new module like in the previous guide by just using 
 ```vim bashrc/manifests/init.pp ```
#### this creates the module bashrc and the manifests directory with the init file. 

#### in the init file you can copy paste what my attached init file on the repo contains. 
#### what does this init file do? 
#### first it creates the class bashrc, then i specify that i am going to modify the file /etc/bashrc using the file resource. 
#### then it ensures the /etc/bashrc is present before continuing
#### it then uses the resource "file_line" this is a resource you have to download the standard library for pupet. 
#### to download all you have to type in is
 ```puppet module install puppetlabs-stdlib --version 5.2.0```
#### now you will have access to more resources to use in puppet.
#### the second half as said defines that you want to add a line to the file bashrc in the path /etc/bashrc

#### now, if you have made sure the puppet master and client still have a connection, validate and apply the new module, and add the module in the manifest/site.pp file like this 
 ```
node 'puppetagent01.example.com' {
  include cowsay
  include bashrc
}
 ```
 
 #### now on the client1 machine enter root, and type in 
  ```puppet agent -t ```
 #### after that is done, exit root, type  ```bash ``` and now the cowsay should pop up atomatically.
 
 #### If you are going to use stdlib file_line for other environments make sure to copy stdlib from either the productions module or data directory into
 #### the corrosponding directory on the new environments directories. 
 
 ### Now you have learned a basic way puppet can manipulate and edit files. this is very powerful and can be used to add configuration lots of clients. 
