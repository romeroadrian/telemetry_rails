TelemetryRails::Engine.routes.draw do
  match 'dismiss', to: 'telemetry#dismiss', as: :dismiss, via: [:get, :post]
end
