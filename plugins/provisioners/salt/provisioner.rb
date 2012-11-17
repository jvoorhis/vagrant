module VagrantPlugins
  module Salt
    class Provisioner < Vagrant.plugin("2", :provisioner)
      class Config < Vagrant.plugin("2", :config)
        # attr_accessor :my_cool_thing

        def initialize
          raise NotImplementedError
        end

        def validate(env, errors)
        raise NotImplementedError
        end
      end

      def self.config_class
        Config
      end

      def provision!
        raise NotImplementedError
      end
    end
  end
end
