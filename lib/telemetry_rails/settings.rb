module TelemetryRails
  class Settings
    @@store = HashWithIndifferentAccess.new
    def self.get(key)
      @@store[key]
    end

    def self.set(key, value)
      @@store[key] = value
    end
  end
end
