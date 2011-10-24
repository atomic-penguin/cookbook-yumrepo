maintainer       "Eric G. Wolfe"
maintainer_email "wolfe21@marshall.edu"
license          "Apache 2.0"
description      "Installs and configures EPEL, ELFF, Dell, and VMware yum repositories."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.15.0"
depends          "yum"
recipe "yumrepo::default", "Installs EPEL, ELFF, Dell, and VMware Tools repositories."
recipe "yumrepo::epel", "Installs Fedora Extra Packages for Enterprise Linux (EPEL) repository"
recipe "yumrepo::elff", "No longer maintained - Deprecated"
recipe "yumrepo::rbel", "Ruby and Opschef packages for RHEL"
recipe "yumrepo::vmware-tools", "Installs VMware (vmware-tools) repository"
recipe "yumrepo::annvix", "Annvix repository for packages usable with Red Hat Enterprise Linux and CentOS."
recipe "yumrepo::postgresql9", "PostgreSQL 9.0 RPMs from pgrpms.org"
recipe "yumrepo::zenoss", "YUM repo for ZenOss stable"

%w{ redhat centos scientific }.each do |os|
  supports os, ">= 5.0"
end

attribute "repo/dell/enabled",
  :display_name => "repo/dell/enabled",
  :description => "Boolean for the Dell recipe. This is dynamically determined by hardware platform.",
  :calculated => true

attribute "repo/dell/download_firmware",
  :display_name => "repo/dell/download_firmware",
  :description => "Enable Dell optional components by setting to true",
  :required => "recommended"

attribute "repo/vmware/release",
  :display_name => "repo/vmware/release",
  :description => "Used in determining the VMware repo URL",
  :default => "4.1",
  :required => "recommended"

attribute "repo/vmware/enabled",
  :display_name => "repo/vwmare/enabled",
  :description => "The VMware recipe boolean. This is dynamically determined by hardware platform.",
  :calculated => true

attribute "repo/vmware/install_optional",
  :display_name => "repo/vmware/install_optional",
  :description => "Whether or not optional VMware components should be installed.",
  :default => "false",
  :required => "recommended"
