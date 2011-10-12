#
# Cookbook Name:: yumrepo
# Recipe:: epel 
#
# Copyright 2010, Eric G. Wolfe
# Copyright 2010, Tippr Inc.
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

base_url = "http://rbel.frameos.org/stable"
rbel_key = "RPM-GPG-KEY-RBEL"

cookbook_file "#{node["yumrepo"]["key_path"]}/#{rbel_key}"

yum_key rbel_key do
  action :add
end

yum_repository "rbel#{node["platform_version"].to_i}" do
  description "RBEL #{node["platform_version"].to_i} repo"
  key rbel_key
  url "http://rbel.frameos.org/stable/el#{node["platform_version"].to_i}/$basearch"
  action :add
end
