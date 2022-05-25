# Puppet guide to add a line to the bashrc file

#### this is a continuation of my startup guide to puppet. If you want to see that click the link to it: https://github.com/hengamer03/Puppet-guide-for-simple-installation 
## in this repo i will show how to easily add a line to the bashrc file. what this will do is run any command you have put onto it.
## for this i will be using cowsay from the previous guide


#### start off by making sure your connection from both master and client is up, and that the agent cant run a "puppet agent -t". after basic checks we can start.

#### go to the directory /etc/puppetlabs/code/environments/producation/modules 
#### create a new module like in the previous guide by just using 
'''vim bashrc/manifests/init.pp''' 
#### this creates the module bashrc and the manifests directory with the init file. 

#### in the init file you can copy paste what my attached init file on the repo contains. 
#### what does this init file do? 
#### first it creates the class bashrc, then i specify that i am going to modify the file /etc/bashrc using the file resource. add 
