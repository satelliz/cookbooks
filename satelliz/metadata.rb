maintainer       "SATELLIZ"
maintainer_email "support@satelliz.com"
license          "Apache 2.0"
description      "Installs/Configures satelliz agent"

version          "0.1"

%w{ ubuntu debian freebsd centos redhat fedora amazon scientific}.each do |os|
  supports os
end

attribute "satelliz/token",
  :display_name => "token",
  :description => "Authentication token",
  :default => nil

attribute "satelliz/env",
  :display_name => "Environment name",
  :description => "Name of your environement (adv. settings)",
  :default => "PRODUCTION"

attribute "satelliz/download_url",
  :display_name => "Agent download url",
  :description => "location of agent binaries",
  :default => "downloads.prod.satelliz.com"
