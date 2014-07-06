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

require "electric_motor/rotates"
require "electric_motor/armature"
require "electric_motor/brush"
require "electric_motor/coil"
require "electric_motor/commutator"
require "electric_motor/current"
require "electric_motor/power_supply"
require "electric_motor/magnetic_pole"
