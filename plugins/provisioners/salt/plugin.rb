require "vagrant"

module VagrantPlugins
  module Salt
    class Plugin < Vagrant.plugin("2")
      name "salt"
      description <<-DESC
      Provides support for provisioning your virtual machines with
      Salt Stack.
      http://saltstack.org/
      DESC

      provisioner("salt") do
        require File.expand_path("../provisioner", __FILE__)
        Provisioner
      end
    end
  end
end
