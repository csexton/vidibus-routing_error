unless Rails.env.test? || Rails.env.cucumber?
  require 'vidibus/routing_error/rack'

  module Vidibus::RoutingError
    class Engine < ::Rails::Engine
      config.app_middleware.insert_after('ActionDispatch::ShowExceptions', 'Vidibus::RoutingError::Rack')
    end
  end
end
