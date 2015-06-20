require "jquery-ui-bootstrap-rails/version"

module Jquery
  module Ui
    module Bootstrap
      module Rails
        if defined?(::Rails) and ::Rails.version >= "3.1"
          class Rails::Engine < ::Rails::Engine
            # this class enables the asset pipeline
          end
        end
      end
    end
  end
end
