Description
===========

Installs a Satelliz agent on server


Requirements
============

Account in Satelliz portal. To get one for free during trial period consult [Satelliz web site](http://www.satelliz.com)

Platform
--------

* Debian, Ubuntu
* CentOS, Red Hat, Fedora, Scientific, Amazon
* ArchLinux

Attributes
==========

* `node["satelliz"]["token"]` - Mandatory attribute to define authentication token to access to satelliz portal. You can found one via your account settings page on portal.satelliz.com
* `node["satelliz"]["host_name"]` - Optional attribute to identify host on satelliz portal. If absent then local hostname will be used or cloud instance ID if available (AWS, HpCloud, Openstack, etc... clouds)


* `node["satelliz"]["env"]` - Optional attribute that can be used if you have an special environemnt defined. (Advanced attribute and usually not required)  
* `node["satelliz"]["download_url"]` - Optional attribute where you can set your own location for satelliz agent binaries. (For example internally in your intranet)

Usage
=====

default
-------

Will deploy agent on host and add it to autostart. Set up token is required.