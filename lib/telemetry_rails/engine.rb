module TelemetryRails
  class Engine < ::Rails::Engine
    isolate_namespace TelemetryRails

    initializer 'telemetry_rails.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper TelemetryRails::WarningHelper
      end
    end
  end
end
