module TelemetryRails
  class TelemetryController < ApplicationController
    def dismiss
      TelemetryRails::Settings.set(:dismissed, true)
      redirect_to :back
    end
  end
end
