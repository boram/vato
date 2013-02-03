require "vato/version"

module Vato
  if defined?(Rails) && defined?(Rails::Engine)
    class Engine < ::Rails::Engine
      require 'vato/engine'
    end

    module Rails
      class Railtie < ::Rails::Railtie
      end
    end
  end
end

unless defined?(Sass)
  require 'sass'
end

unless defined?(FontAwesome)
  require 'font_awesome'
end
