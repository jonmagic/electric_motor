class ElectricMotor
  def initialize
    @rpm = 0
  end

  attr_reader :rpm

  def running?
    rpm > 0
  end

  def power(power_on)
    if power_on
      @rpm = 1000
    else
      @rpm = 0
    end
  end
end

require "electric_motor/armature"
require "electric_motor/magnet"
require "electric_motor/magnet/pole"