#
# Cookbook Name:: yumrepo 
# Test:: jenkins_spec 
#
# Author:: Eric G. Wolfe
#
# Copyright 2012, Eric G. Wolfe
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
require File.join(File.dirname(__FILE__), %w{.. support spec_helper})
require 'chef/node'
require 'chef/platform'

describe 'Repo::Attributes::Default' do
  let(:attr_ns) { 'repo' }

  before do
    @node = Chef::Node.new
    @node.consume_external_attrs(Mash.new(ohai_data), {})
    @node.from_file(File.join(File.dirname(__FILE__), %w{.. .. attributes jenkins.rb}))
  end

  describe "for centos platform version 6.2" do
    let(:ohai_data) do
      { :platform => "centos", :platform_version => "6.2" }
    end

    it "sets the jenkins.key_url" do
      @node[attr_ns]['jenkins']['key_url'].must_equal "http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key"
    end
  end
end
