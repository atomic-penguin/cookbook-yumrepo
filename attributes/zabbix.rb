#
# Cookbook Name:: yumrepo
# Attributes:: zabbix
#
# Copyright 2013, Alexander Milushev (<zunkree@gmail.com>)
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

default['repo']['zabbix']['version'] = 2.2
default['repo']['zabbix']['url'] = "http://repo.zabbix.com/zabbix/#{node['repo']['zabbix']['version']}/rhel/#{node['platform_version'].to_i}/$basearch/"
default['repo']['zabbix']['key'] = "RPM-GPG-KEY-ZABBIX"
default['repo']['zabbix']['key_url'] = "http://repo.zabbix.com/#{node['repo']['zabbix']['key']}"
