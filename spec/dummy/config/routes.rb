Rails.application.routes.draw do

  mount TelemetryRails::Engine => "/telemetry_rails"
end
