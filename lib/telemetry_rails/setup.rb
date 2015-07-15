module TelemetryRails
  @events = []

  def self.setup(&block)
    setup = Setup.new
    setup.instance_eval &block
  end

  def self.events
    @events
  end

  class Setup
    def register(event_name, &block)
      TelemetryRails.events << Event.new(event_name, block)
    end
  end

  class Event
    def initialize(name, block)
      @name = name
      @block = block
    end

    def name
      @name
    end

    def run
      @block.call
    end
  end
end
