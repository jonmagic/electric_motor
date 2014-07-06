module ElectricMotor::Conducts
  def initialize
    @connections = []
    @current     = ElectricMotor::Current.new(nil)
  end

  attr_reader :connections, :current

  def receive(current)
    @current = current
    connections.each {|connection| connection.receive(current) }
    @current = ElectricMotor::Current.new(nil) if connections.any?
  end

  def connect(receiver)
    @connections << receiver
  end

  def disconnect
    @connections = []
  end
end
