#
# Cookbook Name:: satelliz-agent
# Recipe:: default
#
# Copyright 2013, SATELLIZ SA
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

package 'curl'

template "agent_deploy.sh" do
  path "/tmp/agent_deploy.sh"
  source "agent_deploy.sh.erb"
  owner "root"
  group "root"
  mode "0744"
end

bash "agent_install" do
  cwd "/tmp"
  code <<-EOH
    ./agent_deploy.sh
  EOH
  creates "/opt/satelliz-agent/bin/agent"
end
